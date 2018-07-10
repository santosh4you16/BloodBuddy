<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Successfully Added!</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ include file="userheader.jsp" %>

</head>


</script>
<body>
<div class="well">
<center><h3>Blood Record (<%= session.getAttribute("SessName")%>)</h3></center>
</div>
<div class="well">

	<table class="table table-striped">
	<thead>
	<tr>
		<th>A-</th>
		<th>B-</th>
		<th>O-</th>
		<th>AB-</th>
		<th>AB+</th>
		<th>A+</th>
		<th>B+</th>
		<th>O+</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<jsp:useBean id="pojo" class="model.BloodPojo" scope="session"></jsp:useBean>
		<td><jsp:getProperty name="pojo" property="aneg"></jsp:getProperty></td>
		<td><jsp:getProperty name="pojo" property="bneg"></jsp:getProperty></td>
		<td><jsp:getProperty name="pojo" property="oneg"></jsp:getProperty></td>
		<td><jsp:getProperty name="pojo" property="abneg"></jsp:getProperty></td>
		<td><jsp:getProperty name="pojo" property="abpos"></jsp:getProperty></td>
		<td><jsp:getProperty name="pojo" property="apos"></jsp:getProperty></td>
		<td><jsp:getProperty name="pojo" property="bpos"></jsp:getProperty></td>
		<td><jsp:getProperty name="pojo" property="opos"></jsp:getProperty></td>
	</tr>
	
	
	</tbody>
	
	
	</table>

</div>
<div class="well">
<a href="userhoslist.jsp" class="btn btn-primary">Go Back</a>
</div>

</body>
<%@ include file="footer.jsp" %>
</html>