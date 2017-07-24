<%-- 
    Document   : loginAction
    Created on : 21 Sep, 2015, 4:50:57 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
  Connection con = null;
  Statement smt = null;
  
  try{
     Class.forName("com.mysql.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/asct","root","");
     smt = con.createStatement();
     
     String username = request.getParameter("name");
     String password = request.getParameter("pass");
     String sql = "SELECT * FROM admin WHERE admin_email='"+username+"' AND admin_password='"+password+"'";
     ResultSet rs = smt.executeQuery(sql);
     
     if(rs.next()){
         
       response.sendRedirect("deshboard.jsp");
     
     }else{
       out.print("wrong username/ password. Try again later!!");
     }
     
     
  }catch(Exception e){
    e.printStackTrace();
    out.print(e.getMessage());
  }finally{
    con.close();
    smt.close();
  }
%>