
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<h1>Add Category</h1>
<hr />
<form method="post" action="insertCat.jsp">
    <div class="form-group">
        <label>Parent Cat:</label>
        <select class="form-control" name="pcat">
            <option value="0">select</option>
            <% 
  Connection con = null;
  Statement smt = null;
  
  try{
     Class.forName("com.mysql.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/asct","root","");
     smt = con.createStatement();
     String sql = "SELECT * FROM category WHERE cat_pid=0";
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
            
        </select>
    </div> 
    <div class="form-group">
        <label>Cat Name:</label>
        <input type="text" name="cat" class="form-control" />
    </div> 
    <button type="submit" class="btn btn-success btn-sm">Create</button>
    
  
</form>
