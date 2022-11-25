<%--
  Created by IntelliJ IDEA.
  User: GZ
  Date: 2022/11/22
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% if(session.getAttribute("userName")==null)
  response.sendRedirect("/SSMS/jsp/Login.jsp");%>
<html>
<head>
    <title>成绩查看</title>
</head>
<body>
<thead>
<tr>
  <th>序号</th>
  <th>学号</th>
  <th>姓名</th>
  <th>年龄</th>
  <th>手机号</th>
  <th>qq号</th>
  <th>类型</th>
</tr>
</thead>
<tbody>
<%
  List<HashMap> list = (List) session.getAttribute("list");
  if(list != null){
    for (int i = 0;i<list.size();i++) {
      out.print("<tr>");
      out.print("<td>"+list.get(i).get("id")+"</td>");
      out.print("<td>t="+list.get(i).get("number")+"\">"+list.get(i).get("number")+"<a></td>");
      out.print("<td>"+list.get(i).get("name")+"\">"+list.get(i).get("name")+"<a></td>");
      out.print("<td>+list.get(i).get("sex")+"\">"+list.get(i).get("sex")+"<a></td>");
      out.print("<td>="+list.get(i).get("phone")+"\">"+list.get(i).get("phone")+"<a></td>");
      out.print("<td>list.get(i).get("qq")+"\">"+list.get(i).get("qq")+"<a></td>");
      out.print("<td>"+list.get(i).get("type")+"</td>");
      out.print("</tr>");
    }
  }

%>
</tbody>
</table>
</body>
</html>
