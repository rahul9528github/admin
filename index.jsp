<%-- 
    Document   : newjsp
    Created on : 21 Sep, 2015, 4:34:27 PM
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
        <h1>admin Form!</h1>
        
        <form method="post" action="login.jsp">
            
            <label>Email:</label>
            <input type="text" name="name" id="name" placeholder="Name"></input><br/><br/>
            <br />
            <label>Password:</label>
            <input type="password" name="pass" id="password" placeholder="password"></input>
            
            <input type="submit" value="Login" id="signup" />
            
        </form>
    </body>
</html>
