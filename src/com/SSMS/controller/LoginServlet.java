package com.SSMS.controller;

import com.SSMS.service.LoginService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //1.用户信息接收
        String userName = request.getParameter("username");
        String pwd = request.getParameter("password");
        //2.将数据传递给service去处理，并接收service处理结果
        LoginService service = new LoginService();
        HashMap map = service.login(userName, pwd);
        String str = map.keySet().toString();
        String type = str.substring(1, str.length() - 1);
        String res = (String) map.get(type);
        if (res ==null) response.sendRedirect("/SSMS/jsp/Login.jsp");
        else if ("success".equals(map.get(type).toString())) {
            //把用户信息放session中
            HttpSession session = request.getSession();
            session.setAttribute("userName", userName);
            //跳转到主页面
            if (type.equals("1"))
                response.sendRedirect("/SSMS/jsp/teacher-index.jsp");
            else
                response.sendRedirect("/SSMS/jsp/student-index.jsp");

        } else {
            response.sendRedirect("/SSMS/jsp/Login.jsp");
        }
    }

}
