package com.xukeli;

import com.xukeli.utils.DBUtil;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "WriteArticleServlet", urlPatterns = "/WriteArticle")
public class WriteArticleServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 检查用户是否是 admin
        HttpSession session = req.getSession();
        String username = (String) session.getAttribute("username");
        if (!"admin".equals(username)) {
            resp.sendRedirect("blogs");
            return;
        }

        // 获取表单数据
        String title = req.getParameter("title");
        String content = req.getParameter("content");

        // 保存文章到数据库
        boolean success = saveArticle(title, content);

        if (success) {
            // 如果保存成功，跳转到博客页面
            resp.sendRedirect("blogs");
        } else {
            // 如果失败，显示错误消息
            req.setAttribute("message", "文章保存失败，请重试！");
            req.getRequestDispatcher("/writeArticle.jsp").forward(req, resp);
        }
    }

    private boolean saveArticle(String title, String content) {
        String sql = "INSERT INTO posts (title, content) VALUES (?, ?)";
        try (Connection connection = DBUtil.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, title);
            ps.setString(2, content);
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
