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
            <strong>Category Manager</strong>
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
                        <option>Category_id</option>
                        <option>Category_name</option>
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
            
             <a href="deshboard.jsp?page=addCategory" class="btn btn-primary btn-sm"><i class="glyphicon glyphicon-plus"></i></a>
            
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-12">
            
            
            
            
            <table class="table">
            
            <thead>
              <tr>
                <th>Category Id</th>
                <th>Category Name</th>
                <th>Category Pid</th>
                <th>Category Status</th>
                <th>Category Date</th>
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
                   String sql = "SELECT * FROM category ORDER BY cat_id DESC";
                   ResultSet rs = smt.executeQuery(sql);
                   while(rs.next()){

                %>
                  <tr>
                    <th scope="row"><%= rs.getString("cat_id") %></th>
                    <td><%= rs.getString("cat_name") %></td>
                    <td><%= rs.getString("cat_pid") %></td>
                    <td><%= rs.getString("cat_status") %></td>
                    <th><%= rs.getString("cat_date") %></th>
                    <td>
                       <a href="deleteCat.jsp" class="btn btn-danger btn-sm"><i class="glyphicon glyphicon-trash"></i></a>   &nbsp;&nbsp;
                       <a href="editCat.jsp" class="btn btn-primary btn-sm"><i class="glyphicon glyphicon-pencil"></i></a> 
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
