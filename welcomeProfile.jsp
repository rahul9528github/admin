<%-- 
    Document   : newjsp
    Created on : 23 Sep, 2015, 4:16:15 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br>
        <br>
        <h1>Welcome Admin <%= session.getAttribute("name") %> (<%= session.getAttribute("email") %>)</h1>
    </body>
</html>
