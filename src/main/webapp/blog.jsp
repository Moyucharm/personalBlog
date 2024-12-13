<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>博客文章 - xyz's Blog</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/blog.css">
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="index.jsp">首页</a></li>
            <li><a href="about.jsp">关于我</a></li>
            <li><a href="blogs" class="nowPos">博客文章</a></li>
            <li><a href="contact.jsp">联系我</a></li>
            <li><a href="comments">留言板</a></li>
        </ul>
    </nav>
</header>

<main>
    <section class="blog-list">
        <h1>博客文章列表</h1>

        <!-- 如果用户是 admin，显示写文章按钮 -->
        <c:if test="${username == 'admin'}">
            <button onclick="location.href='writeArticle.jsp'">写文章</button>
        </c:if>

        <ul>
            <!-- 动态生成文章链接 -->
            <c:forEach var="post" items="${posts}">
                <li>
                    <a href="article.jsp?id=${post.id}">${post.title}</a>
                </li>
            </c:forEach>
        </ul>
    </section>
</main>

<footer>
    <p>&copy; 2024 xyz - 个人博客</p>
</footer>
</body>
</html>
