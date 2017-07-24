
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<h1>Add Product</h1>
<hr />
<form method="post" action="insertProduct.jsp">
    <div class="form-group">
        <label>Parent Cat:</label>
        <select class="form-control" name="pcat" onchange="getSubcat(this.value)" required="">
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
    
   <div class="form-group" id="scatData" style="display:none">
        <label>Sub Category:</label>
        <select class="form-control" name="scat" id="scat" required=""></select>
    </div>
<div class="form-group">
    <label>Product Name</label>
    <input type="text" name="name" class="form-control" />
</div>
<div class="form-group">
    <label>Product Price</label>
    <input type="text" name="price" class="form-control" />
</div>
<div class="form-group">
    <label>Product Short Description</label>
    <input type="text" name="sdesc" class="form-control" />
</div>
<div class="form-group">
    <label>Product Long Description</label>
    <input type="text" name="ldesc" class="form-control" />
</div>
<div class="form-group">
    <label>Product Features</label>
    <input type="text" name="feature" class="form-control" />
</div>
   <%--<div class="form-group">
    <label>product image</label>
    <input type="file" name="pro_img" class="form-control" />
</div> --%>
    <button type="submit" class="btn btn-success btn-sm">Create</button>
    
  
</form>


