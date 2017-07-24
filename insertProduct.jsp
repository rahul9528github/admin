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
     
     String cid = request.getParameter("scat");
     String name = request.getParameter("name");
     String price = request.getParameter("price");
     String sDesc = request.getParameter("sdesc");
     String lDesc = request.getParameter("ldesc");
     String feature = request.getParameter("feature");
     
     String sql = "INSERT INTO products(`cat_id`, `prod_name`, `prod_price`, `prod_short_desc`, `prod_long_desc`, `prod_feature`, `prod_status`) VALUE('"+cid+"', '"+name+"', '"+price+"', '"+sDesc+"', '"+lDesc+"', '"+feature+"', 1)";
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