<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form action="ControllerServlet" method="get">
    <label for="username">Name : </label>
    <input type="text" name="username" id="username">
    <br>
    <label for="password">Password : </label>
    <input type="password" name="password" id="password">
    <br>
    <input type="submit" value="login">
</form>
</body>
</html>