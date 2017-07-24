<%-- 
    Document   : insertCat
    Created on : 26 Sep, 2015, 5:35:57 PM
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
     
     String pid = request.getParameter("pcat");
     String name = request.getParameter("cat");
     String sql = "INSERT INTO category(`cat_pid`, `cat_name`, `cat_status`) VALUE('"+pid+"', '"+name+"', 'Y')";
     smt.executeUpdate(sql);
     out.print("category created"); 
     response.sendRedirect("deshboard.jsp?page=addCategory");
  }catch(Exception e){
    e.printStackTrace();
    out.print(e.getMessage());
  }finally{
    con.close();
    smt.close();
  }
%>