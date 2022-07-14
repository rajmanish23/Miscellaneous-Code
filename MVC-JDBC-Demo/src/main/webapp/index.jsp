<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Register Form</title>
    <style>
        body {
            text-align: center;
        }
    </style>
</head>
<body>

<h1>Employee Register Form</h1>
<br/>

<form action="employee-details.jsp">
    <label for="firstname">First Name : </label>
    <input type="text" id="firstname" name="firstname">
    <br><br>
    <label for="lastname">Last Name : </label>
    <input type="text" id="lastname" name="lastname">
    <br><br>
    <label for="username">Username : </label>
    <input type="text" id="username" name="username">
    <br><br>
    <label for="password">Password : </label>
    <input type="password" id="password" name="password">
    <br><br>
    <label for="address">Address : </label>
    <input type="text" id="address" name="address">
    <br><br>
    <label for="contact">Contact : </label>
    <input type="text" id="contact" name="contact">
    <br><br>
    <input type="submit" value="register">
</form>

</body>
</html>