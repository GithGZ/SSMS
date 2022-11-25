<%--
  Created by IntelliJ IDEA.
  User: GZ
  Date: 2022/11/21
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% if(session.getAttribute("userName")==null)
    response.sendRedirect("/SSMS/jsp/Login.jsp");%>
<html>
<head>
    <title>学生成绩管理系统</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/home_page.css">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        body{
            background-image: url(../img/login.png);
            background-repeat: no-repeat;
            background-size: 100% auto;
        }
    </style>
</head>
<body>
<div class="header">

    <div class="header1"><h1>SSMS</h1></div>
    <div class="header2">学生成绩管理系统</div>
    <div class="header3">
        <%String name = (String)session.getAttribute("userName");out.println("<h2>"+name + " 同学欢迎你！"+"</h2>");
        request.getSession().setAttribute("name",name);
        request.getSession().setAttribute("type","student");%>

        <div class="btn-group">
            <button type="button" class="btn btn-default dropdown-toggle btn-xs glyphicon glyphicon-cog" data-toggle="dropdown">
                <span class="caret"> </span>
            </button>
            <ul class="dropdown-menu pull-right" role="menu">
                <li><a href="update.jsp" class="glyphicon glyphicon-user">修改密码</a></li>
                <li><a href="${pageContext.request.contextPath}/RemoveServlet" class="glyphicon glyphicon-off">退出登录</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="nav nav1">
    <a href="student-index.jsp">系统首页</a>
    <a href="${pageContext.request.contextPath}/IdServlet">个人中心</a>
    <a href="${pageContext.request.contextPath}/StudentScoreServlet"> 成绩查看</a>
</div>

<div class="d" id="bodyContainer">
    <div style="background: rgba(255,255,255,0.5);margin: 0px 50px 0px 100px;padding: 0px 0px;height: 45%;" align="center">
        <div>
            <img alt="" src="../img/1.jpg">
        </div>
        <div>
            <h1>欢迎访问学生成绩管理系统！</h1>
        </div>
    </div>
</div>
</body>
</html>