<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: GZ
  Date: 2022/11/22
  Time: 8:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% if(session.getAttribute("userName")==null)
    response.sendRedirect("/SSMS/jsp/Login.jsp");%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/table.css" />
    <link rel="stylesheet" type="text/css" href="../css/style-login.css">
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th>序号</th>
        <th>学号</th>
        <th>课程名</th>
        <th>成绩</th>
        <th>考查方式</th>
    </tr>
    </thead>
    <tbody>
    <%

        List<HashMap> list = (List) session.getAttribute("list");
        Integer p=(Integer) request.getSession().getAttribute("p");
        if(p !=null&&(p*5)<list.size()) p =p+1;
        if(list != null){
            for (int i = 5*(p-1);i<5*p;i++) {
                if(i>=list.size())break;
                out.print("<tr>");
                out.print("<td>"+list.get(i).get("id")+"</td>");
                out.print("<td>"+list.get(i).get("stu_id")+"</td>");
                out.print("<td>"+list.get(i).get("course")+"</td>");
                out.print("<td>"+list.get(i).get("score")+"</td>");
                out.print("<td>"+list.get(i).get("exam")+"</td>");
                out.print("</tr>");
            }
        }
        request.getSession().setAttribute("p",p);
    %>
    </tbody>
</table>
<br>
<div align="center">
<a href="student-score2.jsp"><button class="login-button">上一页</button></a>
第<%out.print(p);%>页
<a href="student-score1.jsp"><button class="login-button">下一页</button></a>
<a href="student-index.jsp"><button class="login-button">返回主页</button></a>
</div>
</body>
</html>
