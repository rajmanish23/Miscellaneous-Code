<%--
  Created by IntelliJ IDEA.
  User: katra
  Date: 06-07-2022
  Time: 02:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.rajmanish.beans.LoginBean" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>You have successfully logged in!!!!</p>
<%
    LoginBean bean = (LoginBean)request.getAttribute("bean");
    String username = bean.getUsername();
%>
<%= "Wwelcome, " + username %>
</body>
</html>
