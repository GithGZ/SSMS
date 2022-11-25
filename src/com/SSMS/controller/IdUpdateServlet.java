package com.SSMS.controller;

import com.SSMS.service.IdUpdateService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "IdUpdateServlet", value = "/IdUpdateServlet")
public class IdUpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = (String) request.getSession().getAttribute ("id");  //唯一标识
        String type = (String) request.getSession().getAttribute("type");  // 类型
        String typename = (String) request.getSession().getAttribute("typename");  //修改的列名
        String newtest = request.getParameter("new");  // 新数据
        String t = (String) request.getSession().getAttribute("t");//判断是否是老师查学生的信息
        IdUpdateService ius = new IdUpdateService();
        String res = ius.update(type,id,newtest,typename);
        HttpSession session = request.getSession();
        if(t !=null) {
            type=t;
        }
        session.setAttribute("type",type);
        session.setAttribute("res",res);
        response.sendRedirect("/SSMS/jsp/res.jsp");
    }
}
