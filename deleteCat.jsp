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
     
     String id = request.getParameter("id");
     String sql = "DELETE FROM category WHERE cat_id='"+id+"'";
     smt.executeUpdate(sql);
 
     response.sendRedirect("deshboard.jsp?page=categoryManager");
  }catch(Exception e){
    e.printStackTrace();
    out.print(e.getMessage());
  }finally{
    con.close();
    smt.close();
  }
%>