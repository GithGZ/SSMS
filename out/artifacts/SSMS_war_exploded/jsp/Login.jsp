<%--
  Created by IntelliJ IDEA.
  User: GZ
  Date: 2022/11/21
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<html>
<head>
  <meta charset="utf-8">
  <title>登陆页面</title>
  <link rel="stylesheet" type="text/css" href="../css/style-login.css">
</head>
<body>
<div id="maxbox">
  <h3>学生成绩管理系统</h3>
  <form action="${pageContext.request.contextPath}/LoginServlet" method="post">
    <div class="inputbox">
      <div class="inputText">
        <span class="iconfont icon-mine"></span> <input name="username" type="text"
                                                        placeholder="name" autocomplete="off">
      </div>
      <div class="inputText">
        <span class="iconfont icon-lock"></span> <input name="password" type="password"
                                                        placeholder="Password">
      </div>
      <input class="inputButton" type="submit" value="登     录">
    </div>
  </form>
</div>
</body>
</html>
