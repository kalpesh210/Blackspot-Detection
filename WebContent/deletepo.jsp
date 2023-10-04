<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*"  %>
 <%@ page import="kalpesh11Sys.*"%>

<%
int id = Integer.parseInt(request.getParameter("id"));
Connection con =	 DBconnection.connect();
PreparedStatement  ps = con.prepareStatement("delete from bspot where id = ?");
ps.setInt(1,id);
int j=ps.executeUpdate();
if(j>0)
{
    response.sendRedirect("vpjsp.jsp");
}

%>
</body>
</html>