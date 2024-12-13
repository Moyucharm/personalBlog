<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人博客</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%
    String message = (String) session.getAttribute("message");
    if (message == null)
        message = "欢迎您，游客";
%>
<!-- 导航栏 -->
<header>
    <nav>
        <ul>
            <li><a href="index.jsp" class="nowPos">首页</a></li>
            <li><a href="about.jsp">关于我</a></li>
            <li><a href="blog.jsp">博客文章</a></li>
            <li><a href="contact.jsp">联系我</a></li>
            <li><a href="comments.jsp">留言板</a></li>

        </ul>
    </nav>
</header>

<!-- 主页内容 -->
<main>
    <section class="intro">
        <h1><%= message %></h1>
        <p>分享我的学习和生活的点滴。希望你能从中得到一些启发。</p>
    </section>

    <section class="blog-list">
        <h2>最新博客文章</h2>
        <ul>
            <li>
                <h3><a href="blog.jsp?id=1">如何高效学习编程</a></h3>
                <p>在这篇文章中，我分享了我自己的学习编程的心得。</p>
            </li>
            <li>
                <h3><a href="blog.jsp?id=2">JSP与Servlet的基础学习</a></h3>
                <p>本篇文章讲解了JSP与Servlet的基础知识，帮助大家快速上手Web开发。</p>
            </li>
            <li>
                <h3><a href="blog.jsp?id=3">前端与后端的结合</a></h3>
                <p>讨论了前后端分离以及如何高效地进行全栈开发。</p>
            </li>
        </ul>
    </section>

    <!-- 个人简介 -->
    <section class="about-me">
        <h2>关于我</h2>
        <p>你好，我是[姓名]，一名热爱技术的开发者，正在学习Web开发和机器学习。</p>
    </section>
</main>

<!-- 页脚 -->
<footer>
    <p>&copy; 2024 [姓名] - 个人博客</p>
</footer>

<script src="js/script.js"></script>
</body>
</html>
