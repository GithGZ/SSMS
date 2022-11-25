package com.SSMS.controller;

import com.SSMS.service.DelIdService;
import com.SSMS.service.DelScoreService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "DelScoreServlet", value = "/DelScoreServlet")
public class DelScoreServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");  //唯一标识
        DelScoreService dss = new DelScoreService();
        String res = dss.del(id);
        HttpSession session = request.getSession();
        session.setAttribute("type","teacher");  //用于页面返回
        session.setAttribute("res",res);
        response.sendRedirect("/SSMS/jsp/res.jsp");
    }
}
