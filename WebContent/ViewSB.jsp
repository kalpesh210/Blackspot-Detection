<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<title>Visitors an Admin Panel Category Bootstrap Responsive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="css/morris.css" type="text/css"/>
<!-- calendar -->
<link rel="stylesheet" href="css/monthly.css">
<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
<script src="js/raphael-min.js"></script>
<script src="js/morris.js"></script>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
</head>
<body>
<html lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
 <%@ page import ="java.sql.*"  %>
 <%@ page import="kalpesh11Sys.*"%>
 
<div id="form">
  <div class="container">
    <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-md-8 col-md-offset-2">
      <div id="userform">
        <ul class="nav nav-tabs nav-justified" role="tablist">
          <li class="active"><a href="#signup"  role="tab" data-toggle="tab">Black Spots List</a></li>
           </ul>
        <div class="tab-content">
          <div class="tab-pane fade active in" id="signup">
            <form id="signup" action="admin.html" method="post">
             
              <div class="form-group">
               <% 
Connection con =	 DBconnection.connect();
Statement stmt ;
stmt = con.createStatement();
ResultSet rs=stmt.executeQuery("select * from bspot");

%>
<form action="Addmarks" method="post">

   <table>
  <tr>
    <th>ID</th>
    <th>Location_Name</th>
    <th>Address</th>
      <th>     Reason   </th>
        <th>Latitude</th>
          <th>Longitude</th>
            <th>Level</th>
                  <th>City</th>
  </tr>
  <tr>
    <td>1</td>
    <td>2</td>
    <td>3</td>
  </tr>
  <tr>
    <td>Centro comercial Moctezuma</td>
    <td>Francisco Chang</td>
    <td>Mexico</td>
  </tr>
</table> 
  <%int count=1; %>
  
  <% while(rs.next()) { %>
  <tr>
    <td><%= rs.getInt(1) %></td>
    <td><%= rs.getString(2) %></td>
      <td><%= rs.getString(3) %></td>
    <td><%= rs.getString(4) %></td>
      <td><%= rs.getString(5) %></td>
    <td><%= rs.getString(6) %></td>
      <td><%= rs.getInt(7) %></td>
    <td><%= rs.getString(8) %></td>
  
  </tr>
 <%  count++;} %>
 
</table>
              
              	<center>
			<input type="submit" value="Back" name="back">
							</center>
	
                
              </div>
              </form>
            </form>
          </div>
          <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
<!-- partial -->
  <script  src="./script.js"></script>
</body>
</html>



