<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>写文章</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="index.jsp">首页</a></li>
            <li><a href="about.jsp" >关于我</a></li>
            <li><a href="blogs">博客文章</a></li>
            <li><a href="contact.jsp">联系我</a></li>
            <li><a href="comments">留言板</a></li>
        </ul>
    </nav>
</header>

<main>
    <section class="write-article">
        <h1>写文章</h1>
        <form action="WriteArticle" method="post">
            <label for="title">文章标题:</label><br>
            <input type="text" id="title" name="title" required><br><br>

            <label for="content">文章内容:</label><br>
            <textarea id="content" name="content" rows="10" cols="50" required></textarea><br><br>

            <input type="submit" value="提交">
        </form>
    </section>
</main>

<footer>
    <p>&copy; 2024 xyz - 个人博客</p>
</footer>
</body>
</html>
