package com.xukeli;

import com.xukeli.utils.DBUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet(name = "DeleteArticleServlet", urlPatterns = "/DeleteArticle")
public class DeleteArticleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取文章 ID
        String id = req.getParameter("id");
        if (id != null) {
            String sql = "DELETE FROM posts WHERE id = ?";
            try (Connection connection = DBUtil.getConnection();
                 PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setInt(1, Integer.parseInt(id));
                int rowsAffected = ps.executeUpdate();
                if (rowsAffected > 0) {
                    System.out.println("文章删除成功，ID：" + id);
                } else {
                    System.out.println("文章删除失败，ID：" + id);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        // 删除后跳转到博客文章列表页面
        resp.sendRedirect("blogs");
    }
}
