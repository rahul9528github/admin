<%-- 
    Document   : updateProduct
    Created on : Oct 14, 2015, 2:02:59 AM
    Author     : Vinod Rajput
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
     String catPid = request.getParameter("pcat");
     String id = request.getParameter("id");
     String catName = request.getParameter("cat");
     String sql = "UPDATE category SET cat_pid='"+catPid+"', cat_name='"+catName+"' WHERE cat_id='"+id+"'";
     smt.executeUpdate(sql);
 
     response.sendRedirect("deshboard.jsp?page=product");
  }catch(Exception e){
    e.printStackTrace();
    out.print(e.getMessage());
  }finally{
    con.close();
    smt.close();
  }
%>
