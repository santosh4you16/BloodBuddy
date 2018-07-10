<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot Password ?</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="CSS/style.css"/>
<%@ include file="header.jsp" %>

</head>
<body>
<div id="prono">
	<div class="well">
	<fieldset>
	<legend>Enter OTP</legend>
	<form action="Userverotp" >
		<div class="form-group">
		<label for="otp">Enter OTP:</label>
		<input type="text" placeholder="Enter username" class="form-control" id="otp" name="otpp">
		</div>
		<input type="submit" class="btn btn-success btn-block" value="Next"></input>	
	</form>
	</fieldset>
</div>
</div>
</body>
<%@ include file="footer.jsp" %>
</html>