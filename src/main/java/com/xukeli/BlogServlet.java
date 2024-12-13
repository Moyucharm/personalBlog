package com.xukeli;

import com.xukeli.utils.DBUtil;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "BlogServlet", urlPatterns = "/blogs")
public class BlogServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取所有文章数据
        List<Post> posts = getPosts();

        // 将文章列表传递给 JSP 页面
        req.setAttribute("posts", posts);
        req.getRequestDispatcher("/blog.jsp").forward(req, resp);
    }

    private List<Post> getPosts() {
        List<Post> posts = new ArrayList<>();
        String sql = "SELECT id, title, content FROM posts ORDER BY created_at DESC";
        try (Connection connection = DBUtil.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                int id = rs.getInt("id");
                String title = rs.getString("title");
                String content = rs.getString("content");
                posts.add(new Post(id, title, content));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }

    // 内部类表示文章
    public static class Post {
        private int id;
        private String title;
        private String content;

        public Post(int id, String title, String content) {
            this.id = id;
            this.title = title;
            this.content = content;
        }

        public int getId() {
            return id;
        }

        public String getTitle() {
            return title;
        }

        public String getContent() {
            return content;
        }
    }
}
