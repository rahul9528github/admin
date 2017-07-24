<%-- 
    Document   : insertCat
    Created on : 26 Sep, 2015, 5:35:57 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<h1>Edit Category</h1>
<hr />
<form action="updateCat.jsp" method="post">
    <div class="form-group">
        <label>Parent Cat:</label>
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
     String sql = "SELECT * FROM category WHERE cat_pid=0";
     ResultSet rs = smt.executeQuery(sql);
      String id = request.getParameter("id");
      String pid = request.getParameter("pid");
     String sql2 = "Select * FROM category Where cat_id='"+id+"'";
     
     while(rs.next()){
         if(rs.getString("cat_id").equals(pid)) 
             slt = "selected=selected";
  %>
  <option value="<%=rs.getString("cat_id") %>" <%=slt%>><%= rs.getString("cat_name") %></option>
  <%
     }
    ResultSet rs2 = smt.executeQuery(sql2);
    rs2.next();
  %>
     </select>
    </div> 
  
    <div class="form-group">
        <label>Cat Name:</label>
        <input type="hidden" name="id" value="<%= rs2.getString("cat_id") %>" >
        <input type="text" name="cat" class="form-control" value="<%= rs2.getString("cat_name") %>" />
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
            
     
    
