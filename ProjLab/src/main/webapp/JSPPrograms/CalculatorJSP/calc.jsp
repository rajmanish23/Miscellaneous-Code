<%--
  Created by IntelliJ IDEA.
  User: katra
  Date: 29-06-2022
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Title</title>
</head>
<body>

<%!
    int a,b;
    int add() {return a+b;}
    int sub() {return a-b;}
    int mul() {return a*b;}
    float div() {return (float)a/(float)b;}
%>

<%
    a = Integer.parseInt(request.getParameter("num1"));
    b = Integer.parseInt(request.getParameter("num2"));
    String op = request.getParameter("submit");
    switch (op) {
        case "add" :
            out.print(add());
            break;
        case "sub" :
            out.print(sub());
            break;
        case "mul" :
            out.print(mul());
            break;
        case "div" :
            out.print(div());
            break;
    }
%>

</body>
</html>
