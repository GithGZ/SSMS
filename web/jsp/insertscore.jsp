<%--
  Created by IntelliJ IDEA.
  User: GZ
  Date: 2022/11/22
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<% if(session.getAttribute("userName")==null)
    response.sendRedirect("/SSMS/jsp/Login.jsp");%>

<html>
<head>
    <meta charset="utf-8">
    <title>新增学生成绩信息</title>
    <link rel="stylesheet" type="text/css" href="../css/input.css">
</head>
<body>
<div id="maxbox">
    <h3>新增学生成绩信息</h3>
    <form action="${pageContext.request.contextPath}/InsScoreServlet" method="post">
        <div class="inputbox">
            <div class="inputText">
                <span class="iconfont icon-lock"></span> <input name="stu_id" type="text" placeholder="stu_id">
            </div>
            <div class="inputText">
                <span class="iconfont icon-lock"></span> <input name="course" type="text" placeholder="course">
            </div>
            <div class="inputText">
                <span class="iconfont icon-lock"></span> <input name="score" type="text" placeholder="score">
            </div>
            <div class="inputText">
                <span class="iconfont icon-lock"></span> <input name="exam" type="text" placeholder="exam">
            </div>
            <input class="inputButton" type="submit" value="新     增">
        </div>
    </form>
</div>
</body>
</html>
