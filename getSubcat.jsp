<%-- 
    Document   : getSubcat
    Created on : 13 Oct, 2015, 5:27:24 PM
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
     String id = request.getParameter("cat_id");
     String sql = "SELECT * FROM category WHERE cat_pid='"+id+"'";
     ResultSet rs = smt.executeQuery(sql);
     while(rs.next()){
         
  %>
  <option value="<%=rs.getString("cat_id") %>"><%= rs.getString("cat_name") %></option>
  <%
     }
     
     
  }catch(Exception e){
    e.printStackTrace();
    out.print(e.getMessage());
  }finally{
    con.close();
    smt.close();
  }
%>