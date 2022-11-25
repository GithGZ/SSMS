package com.SSMS.controller;

import com.SSMS.service.TescherScoreService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "TeacherScoreServlet", value = "/TeacherScoreServlet")
public class TeacherScoreServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TescherScoreService tss = new TescherScoreService();
        List list = tss.score();      //所有成绩信息
        HttpSession session = request.getSession();
        session.setAttribute("list",list);
        response.sendRedirect("/SSMS/jsp/teacher-score.jsp");
    }
}
