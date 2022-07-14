package com.rajmanish.dao;
import com.rajmanish.beans.EmployeeData;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EmployeeDAO {
    public int registerEmployee (EmployeeData employee) throws SQLException, ClassNotFoundException {
        String dbUser = "root";
        String dbPassword = "2303";
        String dbUrl = "jdbc:mysql://localhost:3306/personalraj";

        String sql = " insert into employee values (?,?,?,?,?,?,?); ";

//        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
        PreparedStatement prepSt = conn.prepareStatement(sql);

        prepSt.setInt(1,877001);
        prepSt.setString(2, employee.getFirstname());
        prepSt.setString(3, employee.getLastname());
        prepSt.setString(4, employee.getUsername());
        prepSt.setString(5, employee.getPassword());
        prepSt.setString(6, employee.getAddress());
        prepSt.setString(7, employee.getContact());

        return prepSt.executeUpdate();
    }
}
