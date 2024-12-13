package com.xukeli;

import com.xukeli.utils.DBUtil;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CommentServlet", urlPatterns = "/comments")
public class CommentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取当前用户的登录信息
        HttpSession session = req.getSession();
        String username = (String) session.getAttribute("username");

        // 获取留言列表
        List<Comment> commentList = getComments();

        // 将留言数据传递到 JSP 页面
        req.setAttribute("commentList", commentList);
        req.setAttribute("username", username);  // 用来判断是否为游客
        req.getRequestDispatcher("/comments.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取当前用户的登录信息
        HttpSession session = req.getSession();
        String username = (String) session.getAttribute("username");

        // 判断用户是否已登录
        if (username == null) {
            resp.sendRedirect("login.jsp");  // 如果没有登录，重定向到登录页面
            return;
        }

        // 获取留言内容
        String content = req.getParameter("content");

        // 将留言保存到数据库
        saveComment(username, content);

        // 提交完留言后，重定向到留言页面
        resp.sendRedirect("comments");
    }

    private List<Comment> getComments() {
        List<Comment> commentList = new ArrayList<>();
        String sql = "SELECT * FROM comment ORDER BY create_time DESC";  // 按时间倒序排序

        try (Connection connection = DBUtil.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                String username = rs.getString("username");
                String content = rs.getString("content");
                Timestamp createTime = rs.getTimestamp("create_time");
                commentList.add(new Comment(username, content, createTime));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return commentList;
    }


    private void saveComment(String username, String content) {
        String sql = "INSERT INTO comment (username, content) VALUES (?, ?)";

        try (Connection connection = DBUtil.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setString(1, username);
            ps.setString(2, content);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static class Comment {
        private String username;
        private String content;
        private Timestamp createTime;

        public Comment(String username, String content, Timestamp createTime) {
            this.username = username;
            this.content = content;
            this.createTime = createTime;
        }

        public String getUsername() {
            return username;
        }

        public String getContent() {
            return content;
        }

        public Timestamp getCreateTime() {
            return createTime;
        }
    }
}
