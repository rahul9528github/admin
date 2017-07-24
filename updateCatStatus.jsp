




  sql1 = "select cat_status from category where cat_id='"+id+"'";
  
  ResultSet rs = smt.excuteQuery(sql); 


 if(rs.next.getString("cat_status").equals("Y")){
  stasus = "N"
 }else
   status = "Y"
    
   sql = "Update category set cat_status='"+status+"' where cat_id='"+id+"'";
   
   smt.excuteUpdate(sql);
   
   responce.sendRedirect("deshboard.jsp?page=categoryManager");
   