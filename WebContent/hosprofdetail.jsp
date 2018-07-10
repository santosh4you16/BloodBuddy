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
<%@ include file="hosheader.jsp" %>

</head>

<body>
<div class="well">
<center><h3>(<%=session.getAttribute("SessName") %>) Details:-</h3></center>
</div>
<div class="well">
<jsp:useBean id="hsptl" class="model.HospitalPojo" scope="session"></jsp:useBean>
	<ul class="list-group">
	<li class="list-group-item"><h4>Hospital_ID  : </h4><jsp:getProperty name="hsptl" property="hospitalId"></jsp:getProperty></li>
	<li class="list-group-item"><h4>Hospital Name: </h4><jsp:getProperty name="hsptl" property="hospitalName"></jsp:getProperty></li>
	<li class="list-group-item"><h4>State        : </h4><jsp:getProperty name="hsptl" property="hospitalState"></jsp:getProperty></li>
	<li class="list-group-item"><h4>Address      : </h4><jsp:getProperty name="hsptl" property="hospitalAdd"></jsp:getProperty></li>
	<li class="list-group-item"><h4>E-mail       : </h4><jsp:getProperty name="hsptl" property="hospitalMail"></jsp:getProperty></li>
	<li class="list-group-item"><h4>Phone no     : </h4><jsp:getProperty name="hsptl" property="hospitalNum"></jsp:getProperty></li>
		
		</ul>		
</div>

</body>
<%@ include file="footer.jsp" %>
</html>