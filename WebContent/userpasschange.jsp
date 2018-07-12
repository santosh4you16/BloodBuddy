<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BloodBuddy:Register</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="javascript/user_reg_val.js"></script>
<%@ include file="userheader.jsp" %>
</head>
<div class="well">
<center><h4>Edit <%=session.getAttribute("SessName") %></h4></center>
</div>
<body>
<hr>
	<div id="wid" class="container">
	<fieldset>
	<legend>Chnage Password</legend>
	<form action="Userpasschange" onsubmit="return validateForm()" method="get">
	
		<div class="form-group">
		<label for="pwd">Edit Password:</label>
		<input type="password" placeholder="Enter Password" class="form-control" id="pwd" name="pwd">
		</div>
		
		<div class="form-group">
		<label for="pwd1">Re-enter Password:</label>
		<input type="password" placeholder="Re-enter Password" class="form-control" id="pwd1" name="pwd1">
		</div>
		
		
		<input type="submit" class="btn btn-warning btn-block" value="Save"></input>
		
		
	</form>
	</fieldset>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>