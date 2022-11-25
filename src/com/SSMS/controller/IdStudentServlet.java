package com.SSMS.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "IdStudentServlet", value = "/IdStudentServlet")
public class IdStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type"); //上一个页面使用的用户类型
        if(type.equals("student")) response.sendRedirect("/SSMS/jsp/student-index.jsp");
        else response.sendRedirect("/SSMS/jsp/teacher-index.jsp");
    }
}
