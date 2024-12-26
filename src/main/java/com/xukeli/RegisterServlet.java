package com.xukeli;

import com.xukeli.utils.DBUtil;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "RegisterServlet", urlPatterns = "/Register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取用户输入的数据
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        // 检查输入是否合法
        if (username == null || username.trim().isEmpty() ||
                password == null || password.trim().isEmpty()) {
            req.setAttribute("message", "用户名和密码不能为空！");
            req.getRequestDispatcher("/register.jsp").forward(req, resp);
            return;
        }

        // 保存用户信息到数据库
        boolean success = saveUser(username, password);
        if (success) {
            req.setAttribute("message", "注册成功，请<a href='login.jsp'>登录</a>！");
        } else {
            req.setAttribute("message", "注册失败，用户名可能已存在！");
        }

        // 转发到注册页面
        req.getRequestDispatcher("/register.jsp").forward(req, resp);
    }

    private boolean saveUser(String username, String password) {
        String sql = "INSERT INTO users (username, password) VALUES (?, ?)";
        try (Connection connection = DBUtil.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
