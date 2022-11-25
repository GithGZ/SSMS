<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: GZ
  Date: 2022/11/22
  Time: 8:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% if(session.getAttribute("userName")==null)
    response.sendRedirect("/SSMS/jsp/Login.jsp");%>
<html>
<head>
    <title>个人信息</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/table.css" />
    <link rel="stylesheet" type="text/css" href="../css/style-login.css">
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th>序号</th>
        <th>学号</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>手机号</th>
        <th>qq号</th>
        <th>类型</th>
        <th>删除</th>
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
                out.print("<td><a href=\"updateidst.jsp?type="+list.get(i).get("type")+"&typename=number&id="+list.get(i).get("id")+"\">"+list.get(i).get("number")+"<a></td>");
                out.print("<td><a href=\"updateidst.jsp?type="+list.get(i).get("type")+"&typename=name&id="+list.get(i).get("id")+"\">"+list.get(i).get("name")+"<a></td>");
                out.print("<td><a href=\"updateidst.jsp?type="+list.get(i).get("type")+"&typename=sex&id="+list.get(i).get("id")+"\">"+list.get(i).get("sex")+"<a></td>");
                out.print("<td><a href=\"updateidst.jsp?type="+list.get(i).get("type")+"&typename=phone&id="+list.get(i).get("id")+"\">"+list.get(i).get("phone")+"<a></td>");
                out.print("<td><a href=\"updateidst.jsp?type="+list.get(i).get("type")+"&typename=qq&id="+list.get(i).get("id")+"\">"+list.get(i).get("qq")+"<a></td>");
                out.print("<td>"+list.get(i).get("type")+"</td>");
                out.print("<td><a href=\"/SSMS/DelIdServlet?type="+list.get(i).get("type")+"&id="+list.get(i).get("id")+"\">删除学生信息<a></td>");
                out.print("</tr>");
            }
        }
        request.getSession().setAttribute("p",p);
    %>
    </tbody>
</table>
<br>
<div align="center">
<a href="insertid.jsp"><button class="login-button">新增信息</button></a>
<a href="teacher-id2.jsp"><button class="login-button">上一页</button></a>
第<%out.print(p);%>页
<a href="teacher-id1.jsp"><button class="login-button">下一页</button></a>
<a href="teacher-index.jsp"><button class="login-button">返回主页</button></a>
</div>
</body>
</html>
