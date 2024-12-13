<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>留言板 -xyz's Blog</title>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/comment.css">
</head>
<body>

<!-- 导航栏 -->
<header>
  <nav>
    <ul>
      <li><a href="index.jsp" >首页</a></li>
      <li><a href="about.jsp">关于我</a></li>
      <li><a href="blog.jsp">博客文章</a></li>
      <li><a href="contact.jsp">联系我</a></li>
      <li><a href="comments" class="nowPos">留言板</a></li>
    </ul>
  </nav>
</header>

<!-- 留言区内容 -->
<h1>留言区</h1>

<c:if test="${empty username}">
  <p style="text-align: center">您好，游客！您需要 <a href="login.jsp">登录</a> 才能留言。</p>
</c:if>

<div class="post">
  <c:if test="${not empty username}">
    <form action="comments" method="POST" class="leave-comment">
      <input name="content" placeholder="写下您的留言..." required></input>
      <button type="submit">提交留言</button>
    </form>
  </c:if>
</div>


<h2>留言列表</h2>
<div class="contents">
  <c:if test="${empty commentList}">
    <p>目前没有留言。</p>
  </c:if>
  <c:forEach var="comment" items="${commentList}">
      <div class="comment-box">
        <div class="info">
          <strong>${comment.username}</strong> - ${comment.createTime}
        </div>
        <div class="content">${comment.content}</div>
      </div>
    </c:forEach>
</div>
<!-- 页脚 -->
<footer>
  <p>&copy; 2024 xyz - 个人博客</p>
</footer>

</body>
</html>
