<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BloodBuddy:login</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ include file="header.jsp" %>
</head>
<link rel="stylesheet" href="CSS/style.css"/>
<body>
<div id="prono">
	<hr>
	
	<div id="wid" class="well">
	<fieldset>
	<legend>Login (HOSPITAL)</legend>
	<form action="Hoslogin" method="post">
		<div class="form-group">
		<label for="username">Username:</label>
		<input type="text" placeholder="Enter username" class="form-control" id="username" name="hid">
		</div>
		<div class="form-group">
		<label for="pwd">Password:</label>
		<input type="password" placeholder="Enter Password" class="form-control" id="pwd" name="pwd">
		</div>
		<input type="submit" class="btn btn-danger btn-block" value="Login"></input>
		<a href="#" class="btn btn-link btn-block">Forgot Password?</a>
		
	</form>
	</fieldset>
</div>
<hr>
</div>
</body>
<%@ include file="footer.jsp" %>
</html>