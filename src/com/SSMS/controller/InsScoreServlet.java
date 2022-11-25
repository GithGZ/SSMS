package com.SSMS.controller;

import com.SSMS.service.InsScoreService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "InsScoreServlet", value = "/InsScoreServlet")
public class InsScoreServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //需要输入的成绩信息
        String stu_id = request.getParameter("stu_id");
        String course = request.getParameter("course");
        String score = request.getParameter("score");
        String exam = request.getParameter("exam");
        InsScoreService iss = new InsScoreService();
        String res = iss.insert(stu_id,course,score,exam);
        HttpSession session = request.getSession();
        session.setAttribute("res",res);
        session.setAttribute("type","teacher");
        response.sendRedirect("/SSMS/jsp/res.jsp");
    }
}
