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
<%@ include file="header.jsp" %>
<link rel="stylesheet" href="CSS/style.css"/>
</head>
<body>
<div id="prono">
<hr>
	<div id="wid" class="well">
	<fieldset>
	<legend>SignUp (HOSPITAL)</legend>
	<form action="Hosregister" onsubmit="return validateForm()" method="get">
		
		<div class="form-group">
		<label for="Name">Hospital Name:</label>
		<input type="text" placeholder="Hospital Name" class="form-control" id="Name" name="Name">
		</div>
		
		<div class="form-group">
		<label for="address">Address:</label>
		<input type="text" placeholder="Address" class="form-control" id="address" name="address">
		</div>
		
		<div class="form-group">
		<label for="email">Enter your E-mail:</label>
		<input type="email" placeholder="Enter email" class="form-control" id="email" name="email">
		</div>
		
		<div class="form-group">
		<label for="State">Select State:</label>
		<select class="form-control" id="state" name="state">
			<option value="">------------Select State------------</option>
			 <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
			<option value="Andhra Pradesh">Andhra Pradesh</option>
			<option value="Arunachal Pradesh">Arunachal Pradesh</option>
			<option value="Assam">Assam</option>
			<option value="Bihar">Bihar</option>
			<option value="Chandigarh">Chandigarh</option>
			<option value="Chhattisgarh">Chhattisgarh</option>
			<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
			<option value="Daman and Diu">Daman and Diu</option>
			<option value="Delhi">Delhi</option>
			<option value="Goa">Goa</option>
			<option value="Gujarat">Gujarat</option>
			<option value="Haryana">Haryana</option>
			<option value="Himachal Pradesh">Himachal Pradesh</option>
			<option value="Jammu and Kashmir">Jammu and Kashmir</option>
			<option value="Jharkhand">Jharkhand</option>
			<option value="Karnataka">Karnataka</option>
			<option value="Kerala">Kerala</option>
			<option value="Lakshadweep">Lakshadweep</option>
			<option value="Madhya Pradesh">Madhya Pradesh</option>
			<option value="Maharashtra">Maharashtra</option>
			<option value="Manipur">Manipur</option>
			<option value="Meghalaya">Meghalaya</option>
			<option value="Mizoram">Mizoram</option>
			<option value="Nagaland">Nagaland</option>
			<option value="Orissa">Orissa</option>
			<option value="Pondicherry">Pondicherry</option>
			<option value="Punjab">Punjab</option>
			<option value="Rajasthan">Rajasthan</option>
			<option value="Sikkim">Sikkim</option>
			<option value="Tamil Nadu">Tamil Nadu</option>
			<option value="Tripura">Tripura</option>
			<option value="Uttaranchal">Uttaranchal</option>
			<option value="Uttar Pradesh">Uttar Pradesh</option>
			<option value="West Bengal">West Bengal</option>
		</select>
		</div>
		
		<div class="form-group">
		<label for="pwd">Enter Password:</label>
		<input type="password" placeholder="Enter Password" class="form-control" id="pwd" name="pwd">
		</div>
		
		<div class="form-group">
		<label for="pwd1">Re-enter Password:</label>
		<input type="password" placeholder="Re-enter Password" class="form-control" id="pwd1" name="pwd1">
		</div>
		
		<div class="form-group">
		<label for="Phone">Phone No:</label>
		<input type="text" placeholder="Phone-nO" class="form-control" id="phne" name="phone">
		</div>
		
		
		<input type="submit" class="btn btn-warning btn-block" value="Sign Up"></input>
		<a href="hlogin.jsp" class="btn btn-link btn-block">Already a user, Log In Here</a>
		
	</form>
	</fieldset>
</div>
<hr>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>