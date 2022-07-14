<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Details</title>
    <%@page import="com.rajmanish.dao.EmployeeDAO" %>
</head>
<body>

<jsp:useBean id="employee" class="com.rajmanish.beans.EmployeeData"/>
<jsp:setProperty name="employee" property="*"/>

<%
    EmployeeDAO empDao = new EmployeeDAO();
    try {
        int status = empDao.registerEmployee(employee);
        if (status > -1) {
            out.print("You have registered successfully");
        }
    } catch (Exception e) {
        out.print("Error occured\n" + e);
    }

%>

</body>
</html>
