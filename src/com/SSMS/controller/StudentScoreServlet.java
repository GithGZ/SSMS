package com.SSMS.controller;

import com.SSMS.service.StudentScoreService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "StudentScoreServlet", value = "/StudentScoreServlet")
public class StudentScoreServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String stu = (String) request.getSession().getAttribute("name");
        StudentScoreService sss = new StudentScoreService();
        List list = sss.score(stu);  //学生自己的成绩信息
        HttpSession session = request.getSession();
        session.setAttribute("list",list);
        response.sendRedirect("/SSMS/jsp/student-score.jsp");
    }
}
