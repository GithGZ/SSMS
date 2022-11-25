package com.SSMS.controller;

import com.SSMS.service.InsIdService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "InsIdServlet", value = "/InsIdServlet")
public class InsIdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //需要输入的基本信息
        String number = request.getParameter("number");
        String name = request.getParameter("name");
        String sex = request.getParameter("sex");
        String phone = request.getParameter("phone");
        String qq = request.getParameter("qq");
        InsIdService iis = new InsIdService();
        String res = iis.insert(number,name,sex,phone,qq);
        HttpSession session = request.getSession();
        session.setAttribute("type","teacher");
        session.setAttribute("res",res);
        response.sendRedirect("/SSMS/jsp/res.jsp");
    }
}
