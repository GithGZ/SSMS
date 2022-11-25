<%--
  Created by IntelliJ IDEA.
  User: GZ
  Date: 2022/11/22
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% if(session.getAttribute("userName")==null)
    response.sendRedirect("/SSMS/jsp/Login.jsp");%>
<html>
<head>
    <title>修改信息</title>
    <link rel="stylesheet" type="text/css" href="../css/style-login.css">
</head>
<body>
    <%
        String id = request.getParameter("id");
        String type = request.getParameter("type");
        String typename = request.getParameter("typename");
        request.getSession().setAttribute("id",id);
        request.getSession().setAttribute("type",type);
        request.getSession().setAttribute("typename",typename);
    %>
    <div id="maxbox">
        <h3>修改基本信息</h3>
        <form action="${pageContext.request.contextPath}/IdUpdateServlet" method="get">
            <div class="inputbox">
                <div class="inputText">
                    <span class="iconfont icon-mine"></span> <input name="new" type="text"
                                                                    placeholder="新信息" autocomplete="off">
                </div>
                <input class="inputButton" type="submit" value="修     改">
            </div>
        </form>
    </div>
</body>
</html>
