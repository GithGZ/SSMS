package com.SSMS.controller;

import com.SSMS.service.IdService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "IdServlet", value = "/IdServlet")
public class IdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = (String) request.getSession().getAttribute("name"); // 用户名为用户的学号或工号
        String type = (String) request.getSession().getAttribute("type"); //用户类型
        IdService is = new IdService();
        List list = is.id(username,type);
        HttpSession session = request.getSession();
        session.setAttribute("type",type);
        session.setAttribute("list",list);
        response.sendRedirect("/SSMS/jsp/id.jsp");
    }
}
