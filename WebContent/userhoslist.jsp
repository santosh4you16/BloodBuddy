<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hospital list </title>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ include file="userheader.jsp" %>
<%@ page import="java.sql.*" %>

<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator"  %>
<body>
<div class="well">
<center><h3>User (<%= session.getAttribute("SessName") %>) Listing Hospitals in <%= session.getAttribute("city") %></h3></center>
</div>
<div class="well">
	
	
	<form action="Bloodlisthos">
			<%	ArrayList al1=(ArrayList)session.getAttribute("hslist");
				out.println("<h3>HOSPITALS<h3><hr>");
				Iterator itr=al1.iterator();
				out.println("<ul class=\"list-group\">");
				while(itr.hasNext()){
				String hsname=(String)itr.next();
				
				out.println("<li class=\"list-group-item\"><button type=\"submit\" class=\"btn btn-link\" name=\"btnhos\" value=\""+hsname+"\">"+hsname+"</button></li>");
				
				}
				out.println("</ul>");
			%>
	</form>
	
	
</div>

</body>
<%@ include file="footer.jsp" %>
</html>