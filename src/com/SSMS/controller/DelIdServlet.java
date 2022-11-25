package com.SSMS.controller;

import com.SSMS.service.DelIdService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "DelIdServlet", value = "/DelIdServlet")
public class DelIdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");  //删除的表
        String id = request.getParameter("id");  //唯一标识
        DelIdService dis = new DelIdService();
        String res = dis.del(type,id);
        HttpSession session = request.getSession();
        session.setAttribute("type","teacher");  //页面返回
        session.setAttribute("res",res);
        response.sendRedirect("/SSMS/jsp/res.jsp");
    }
}
