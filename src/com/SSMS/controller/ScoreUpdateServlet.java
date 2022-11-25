package com.SSMS.controller;

import com.SSMS.service.ScoreUpdateService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ScoreUpdateServlet", value = "/ScoreUpdateServlet")
public class ScoreUpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = (String) request.getSession().getAttribute("id"); //唯一标识
        String typename = (String) request.getSession().getAttribute("typename");  //修改的列名
        String newtest = request.getParameter("new");  //修改之后的新信息
        ScoreUpdateService sus = new ScoreUpdateService();
        String res = sus.update(newtest,id,typename);
        HttpSession session = request.getSession();
        session.setAttribute("res",res);
        session.setAttribute("type","teacher");
        response.sendRedirect("/SSMS/jsp/res.jsp");
    }
}
