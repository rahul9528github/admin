<%-- 
    Document   : deshboard
    Created on : 24 Sep, 2015, 10:52:44 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
  String route = request.getParameter("page");
  String incPage = null;
  if(route != null){
   incPage = route+".jsp";
  }else{
    incPage = "welcomeProfile.jsp";
  }
   
%>
<!DOCTYPE html>
<html lang="en"><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Dashboard Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">

  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="dashboard.jsp?page=welcomeProfile">Dashboard</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Help</a></li>
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>
      <div class="clearfix">&nbsp;</div>
      <div class="clearfix">&nbsp;</div>    
      <div class="clearfix">&nbsp;</div>
      <div class="container-fluid">
          <div class="row">
              <div class="col-md-3">
                  
                  <ul class="nav nav-pills nav-stacked">
                      <li><a href="deshboard.jsp?page=welcomeProfile" class="active">Dashboard</a></li>
                      <li><a href="deshboard.jsp?page=settingManager">Setting Manager</a></li>
                      <li><a href="deshboard.jsp?page=categoryManager">Category Manager</a></li>
                      <li><a href="deshboard.jsp?page=product">product </a></li>
                  </ul>
                  
              </div>
              <div class="col-md-9">
                  
                  <jsp:include page='<%= incPage %>'></jsp:include>  
                  
              </div>
          </div>
          
      </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="jquery-2.1.4.js"></script>
    <script src="bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
    
    <script type="text/javascript">
       $(document).ready(function(){
           
       });
    </script>

</body></html>

