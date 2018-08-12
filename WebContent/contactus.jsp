<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ include file="header.jsp" %>
</head>
<body>
<div class="well">
<center><h2 style="text-shadow:2px 2px 2px grey;">Send Us your feedback</h2></center>
<div class="container">
<form action="Contactus">
	<div class="form-group">
		<label for="name">Name:</label>
		<input type="text" placeholder="Enter name" class="form-control" id="name" name="name">
		</div>
		<div class="form-group">
		<label for="message">Enter Your Message Here:</label><br>
		<textarea class="form-control rounded-0" rows="10" placeholder="Enter Message:" id="message" name="msg"></textarea><br>
		<input type="submit" class="btn btn-danger btn-block" value="Send"></input>
		
</form>
</div>
</div>
</body>
<%@ include file="footer.jsp" %>
</html>