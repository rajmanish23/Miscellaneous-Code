package com.rajmanish.databaseProgs;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "DBLogin", value = "/DB-Login")
public class DBLogin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String url = "jdbc:mysql://localhost:3306/personalRaj";
        PrintWriter out = response.getWriter();
        try {
            Connection conn = DriverManager.getConnection(url, username, password);
            out.println("Connected to Database");
            conn.close();
        } catch (SQLException e){
            out.println(e);
        }
    }
}
