<%-- 
    Document   : categoryManager
    Created on : 24 Sep, 2015, 6:06:07 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="container-fluid">
    
    <div class="row">
        
        <div class="col-md-12">
            <strong>product Manager</strong>
            <hr />
        </div>
    </div>
     <div class="row">
        
        <div class="col-md-10">
            
            <form class="form-inline">
                <div class="form-group">
                    <label>Search By:</label>
                    <select class="form-control">
                         <option></option>
                        <option>product_id</option>
                        <option>product_name</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Search By:</label>
                    <input type="search" placeholder="serch" class="form-control" />
                </div>
                <button class="btn btn-primary btn-sm"><i class="glyphicon glyphicon-search"></i></button>
            </form>   
        </div>
         <div class="col-md-2">
            
             <a href="deshboard.jsp?page=addProduct" class="btn btn-primary btn-sm"><i class="glyphicon glyphicon-plus"></i></a>
            
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-12">
            
            
            
            
            <table class="table">
            
            <thead>
              <tr>
                <th>product Id</th>
                <th>product Name</th>
                <th>product Price</th>
                <th>product Status</th>
                <th>product short_Description</th>
                 <th>product long_Description</th>
                 <%-- <th>product image</th> --%>
                <th>Action</th>
              </tr>
            </thead>
           
                
            <tbody>
                 <% 
                Connection con = null;
                Statement smt = null;

                try{
                   Class.forName("com.mysql.jdbc.Driver");
                   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/asct","root","");
                   smt = con.createStatement();
                   String sql = "SELECT * FROM products ORDER BY cat_id DESC";
                   ResultSet rs = smt.executeQuery(sql);
                   while(rs.next()){

                %>
                  <tr>
                    <th scope="row"><%= rs.getString("cat_id") %></th>
                    <td><%= rs.getString("prod_name") %></td>
                    <td><%= rs.getString("prod_price") %></td>
                    <td><%= rs.getString("prod_status") %></td>
                    <th><%= rs.getString("prod_sdesc") %></th>
                    <th><%= rs.getString("prod_ldesc") %></th>
                    <td>
                       <a href="deleteProduct.jsp" class="btn btn-danger btn-sm"><i class="glyphicon glyphicon-trash"></i></a>   &nbsp;&nbsp;
                       <a href="editProduct.jsp" class="btn btn-primary btn-sm"><i class="glyphicon glyphicon-pencil"></i></a> 
                    </td>
                  </tr>
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
                
                
              
            </tbody>
              
           
          </table>
            
            
            
        </div>
        
    </div>
    
</div>
        
        
        
    </body>
</html>