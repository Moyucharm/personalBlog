<%--
  Created by IntelliJ IDEA.
  User: 23699
  Date: 2024/12/13
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>登录结果</title>
  <link rel="stylesheet" href="css/user.css">
</head>
<body>

<%
  String message = (String) request.getAttribute("message");
%>
<div class="main">
  <ul>
    <li><h2>登录结果 -xyz's Blog</h2></li>
    <li><p><%= message %></p></li>
    <li><input type="button" value="返回登录页面" onclick="location.href='login.jsp'"></li>
    <li></li>
  </ul>
</div>

</body>
</html>
