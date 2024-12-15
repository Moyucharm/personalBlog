<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>首页 -xyz's Blog</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="icon" href="img/favicon.png" type="image/x-icon">
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
            <li><a href="blogs">博客文章</a></li>
            <li><a href="contact.jsp">联系我</a></li>
            <li><a href="comments">留言板</a></li>

        </ul>
    </nav>
</header>

<!-- 主页内容 -->
<main>
    <section class="intro">
        <h1><%= message %></h1>
        <p>欢迎来到我的个人博客！我在这里分享学习和生活的点滴，希望你能从中得到一些启发。</p>
    </section>

    <section class="blog-list">
        <h2>推荐文章</h2>
        <ul>
            <li>
                <h3><a href="article.jsp?id=5">【公告】用户注册须知</a></h3>
                <p>新人必看！</p>
            </li>
            <li>
                <h3><a href="article.jsp?id=1">ChatGPT-o1来啦</a></h3>
                <p>简要介绍及体验ChatGPT-o1。</p>
            </li>
            <li>
                <h3><a href="article.jsp?id=4">黑神话悟空惜败</a></h3>
                <p>少了一件“袈裟”又何妨？</p>
            </li>
        </ul>
    </section>

    <!-- 个人简介 -->
    <section class="about-me">
        <h2>关于我</h2>
        <p>你好，我是徐一銍，一名热爱技术的大学生，正在学习Web开发和机器学习。</p>
    </section>
</main>

<!-- 页脚 -->
<footer>
    <p>&copy; 2024 xyz - 个人博客</p>
</footer>

<div class="pio-container right" style="bottom: 60px">
    <div class="pio-action"></div>
    <canvas id="pio" width="200" height="250"></canvas>
</div>
<link rel="stylesheet" href="banniang/css/pio.css">
<script src="banniang/js/pio.js"></script>
<script src="banniang/js/l2d.js"></script>
<script>
    var pio = new Paul_Pio({
        "mode": "fixed",
        "tips": true,
        "hidden": true,
        "content": {
            "welcome": ["欢迎来到阿牛的网站！", "博主每天都有些折腾记录，欢迎前往他的小窝阅读~"],
        },
        "model": [
            "banniang/live2d-widget-models/live2d-widget-model-koharu/assets/koharu.model.json",
            "banniang/live2d-widget-models/live2d-widget-model-haru/01/assets/haru01.model.json",
            "banniang/live2d-widget-models/live2d-widget-model-haru/02/assets/haru02.model.json",
            "banniang/live2d-widget-models/live2d-widget-model-histoire/histoire/histoire.model.json",
            "banniang/live2d-widget-models/live2d-widget-model-blanc_normal/blanc_normal/blanc_normal.model.json",

        ]
    });
</script>


<script src="js/script.js"></script>
</body>
</html>
