<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*, com.xukeli.utils.DBUtil" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>文章详情</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/article.css">
    <link rel="icon" href="img/favicon.png" type="image/x-icon">
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="index.jsp">首页</a></li>
            <li><a href="about.jsp">关于我</a></li>
            <li><a href="blogs">博客文章</a></li>
            <li><a href="contact.jsp">联系我</a></li>
            <li><a href="comments">留言板</a></li>
        </ul>
    </nav>
</header>

<main>
    <div class="blog-post">
        <%
            // 获取文章 ID
            String id = request.getParameter("id");
            if (id != null) {
                String sql = "SELECT title, content FROM posts WHERE id = ?";
                try (Connection connection = DBUtil.getConnection();
                     PreparedStatement ps = connection.prepareStatement(sql)) {
                    ps.setInt(1, Integer.parseInt(id));
                    ResultSet rs = ps.executeQuery();
                    if (rs.next()) {
                        String title = rs.getString("title");
                        String content = rs.getString("content");
        %>
        <div class="title">
            <h1><%= title %></h1>
        </div>
        <div class="content">
            <p><%= content %></p>
        </div>
        <%
        } else {
        %>
        <p>文章未找到。</p>
        <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        %>
        <p>加载文章时出错。</p>
        <%
            }
        } else {
        %>
        <p>无效的文章 ID。</p>
        <%
            }
        %>
        <button onclick="location.href='blogs'">返回</button>
        <%
            // 判断用户是否为管理员
            String username = (String) session.getAttribute("username");
            if ("admin".equals(username)) {
        %>
        <!-- 显示删除按钮 -->
        <button onclick="confirmDelete('<%= id %>')">删除</button>
        <%
            }
        %>
    </div>
</main>

<script rel="script" src="js/delArticle.js"></script>
<footer>
    <p>&copy; 2024 xyz - 个人博客</p>
</footer>
</body>
</html>
