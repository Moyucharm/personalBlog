<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <title>用户注册 - xyz's Blog</title>
  <link rel="stylesheet" href="css/user.css">
  <link rel="icon" href="img/favicon.png" type="image/x-icon">
  <script rel="script" src="js/register.js"></script>
</head>
<body>
<form action="/Register" method="post" onsubmit="return validateForm(event)">
  <div class="main">
    <ul>
      <li><h2>用户注册</h2></li>
      <li>
        <label for="username">账号:</label>
        <input type="text" id="username" name="username" required><br><br>
      </li>
      <li>
        <label for="password">密码:</label>
        <input type="password" id="password" name="password" required><br><br>
      </li>
      <li>
        <label for="confirm-password">确认密码:</label>
        <input type="password" id="confirm-password" name="confirm-password" required><br><br>
      </li>
      <li><p>已有账号？<a href="login.jsp">登录</a></p></li>
      <li>
        <input type="submit" value="注册">
      </li>
    </ul>
  </div>
</form>
</body>
</html>
