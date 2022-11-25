package com.SSMS.controller;

import com.SSMS.service.TescherSIdService;
import com.SSMS.service.TescherScoreService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "TeacherSIdServlet", value = "/TeacherSIdServlet")
public class TeacherSIdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TescherSIdService tss = new TescherSIdService();
        List list = tss.id();
        HttpSession session = request.getSession();
        session.setAttribute("list",list);
        response.sendRedirect("/SSMS/jsp/teacher-id.jsp");
    }
}
