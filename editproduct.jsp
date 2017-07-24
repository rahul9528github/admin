<%-- 
    Document   : insertCat
    Created on : 26 Sep, 2015, 5:35:57 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<h1>Edit product </h1>
<hr />
<form action="updateProduct.jsp" method="post">
    <div class="form-group">
        <label>Parent product:</label>
        <select class="form-control" name="pcat">
            <option value="0">select</option>
            <%
  Connection con = null;
  Statement smt = null;
  String slt = null;
  try{
     Class.forName("com.mysql.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/asct","root","");
     smt = con.createStatement();
     String sql = "SELECT * FROM products WHERE cat_id=0";
     ResultSet rs = smt.executeQuery(sql);
      String id = request.getParameter("id");
      String pid = request.getParameter("prod_id");
     String sql2 = "Select * FROM category Where cat_id='"+id+"'";
     
     while(rs.next()){
         if(rs.getString("cat_id").equals(pid)) 
             slt = "selected=selected";
  %>
  <option value="<%=rs.getString("cat_id") %>" <%=slt%>><%= rs.getString("prod_name") %></option>
  <%
     }
    ResultSet rs2 = smt.executeQuery(sql2);
    rs2.next();
  %>
     </select>
    </div> 
  
    <div class="form-group">
        <label>product Name:</label>
        <input type="hidden" name="id" value="<%= rs2.getString("cat_id") %>" >
        <input type="text" name="cat" class="form-control" value="<%= rs2.getString("prod_name") %>" />
    </div> 
    <button type="submit" class="btn btn-success btn-sm">Update</button>
    
  
</form>
 
 <%
     
  }catch(Exception e){
    e.printStackTrace();
    out.print(e.getMessage());
  }finally{
    con.close();
    smt.close();
  }
%>
            
     
    
