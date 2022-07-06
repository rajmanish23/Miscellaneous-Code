package com.rajmanish.controller;

import com.rajmanish.beans.LoginBean;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ControllerServlet", value = "/ControllerServlet")
public class ControllerServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        LoginBean bean = new LoginBean();
        bean.setUsername(username);
        bean.setPassword(password);
        request.setAttribute("bean", bean);

        if (bean.validate()) {
            RequestDispatcher reqDisp = request.getRequestDispatcher("login-success.jsp");
            reqDisp.forward(request,response);
        } else {
            RequestDispatcher reqDisp = request.getRequestDispatcher("login-error.jsp");
            reqDisp.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
