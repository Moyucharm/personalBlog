<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户登录 -xyz's Blog</title>
    <link rel="stylesheet" href="css/user.css">
    <link rel="icon" href="img/favicon.png" type="image/x-icon">
</head>
<body>

<form action="/Login" method="post">
    <div class="main">
        <ul>
        <li><h2>用户登录</h2></li>
        <li>
            <label for="username">账号:</label>
            <input type="text" id="username" name="username" required><br><br>
        </li>
            <label for="password">密码:</label>
            <input type="password" id="password" name="password" required><br><br>
        <li>
            <input type="submit" value="登录">
            <input type="button" value="注册" onclick="location.href='register.jsp'">
            <input type="button" value="游客登录" onclick="location.href='index.jsp'">
        </li>

        </ul>
    </div>
</form>



</body>
</html>