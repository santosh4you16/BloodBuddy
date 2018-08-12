<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Successfully Registered!</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="CSS/style.css"/>
<%@ include file="userheader.jsp" %>
<%@ page errorPage="errorpage.jsp" %>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
%>
</head>
<body>
<div id="#prono" class="well" >
<center><h1><%=(String)request.getParameter("alname").toUpperCase()%> - Request ?</h1></center>
			<% session.setAttribute("reciever",request.getParameter("alname")); %>
<center>
<a href="Useracceptreq" class="btn btn-success">Accept</a>
<a href="Userrejectreq" class="btn btn-danger">Reject</a>
</center>

</div>
</body>
<%@ include file="footer.jsp" %>
</html>