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
</head>
<body>
<h2>登录结果</h2>
<%
  String message = (String) request.getAttribute("message");
%>
<p><%= message %></p>
<a href="/login.jsp">返回登录页面</a>
</body>
</html>
