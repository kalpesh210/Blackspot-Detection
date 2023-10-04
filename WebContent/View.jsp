<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="index.html" class="logo">
        ADMIN
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->
<div class="nav notify-row" id="top_menu">
    <!--  ation start -->
    <ul class="nav top-menu">
        <!-- settings start -->
     
        <!-- settings end -->
    
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                
                <li class="sub-menu">
                    <a href="addpo.html">
                        <span>Add Police Station</span>
                    </a>
                
                <li>
                    <a href="police.jsp">
                        <span>View Station </span>
                    </a>
                </li>
           
                    <li class="sub-menu">
                    <a href="View.jsp">
      
                        <span>View All Spots</span>
                    </a>
              
        <!-- sidebar menu end-->

  <!-- / footer -->
</section>
<!--main content end-->
</section>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->	
<center>
<%@ page import ="java.sql.*"  %>
 <%@ page import="kalpesh11Sys.*"%>

<%
Connection con =	 DBconnection.connect();
Statement stmt ;
stmt = con.createStatement();
ResultSet rs=stmt.executeQuery("select * from bspot");
%>
      <ul class="nav nav-tabs nav-justified" role="tablist">
          <li class="active"><a href="#signup"  role="tab" data-toggle="tab">BLACK SPOT LIST</a></li>
           </ul>
<table border="1"><br><br>
<tr>
<th>   Id  </th>
<th> Location Name</th>
<th>Location Address</th>
<th>Reason</th>
<th>Latitude</th>
<th>Longitude</th>
<th>Level</th>
<th>City</th>
</tr>
<% while(rs.next()){ %>
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
<% } %>	
</table><br><br>
<a href="admin.html">


</body>
</html>