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
<%@ page errorPage="errorpage.jsp" %>
</head>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
%>
</script>
<body>
<div class="well">
<center><h3>(<%=session.getAttribute("SessName") %>) Details:-</h3></center>
</div>
<div class="container">
		<jsp:useBean id="upj" class="beans.Userpojo" scope="session"></jsp:useBean>
		<ul class="list-group">
		<li class="list-group-item"><h4>UserID   : </h4><jsp:getProperty name="upj" property="uid"></jsp:getProperty></li>
		<li class="list-group-item"><h4>Name     : </h4><jsp:getProperty name="upj" property="uname"></jsp:getProperty></li>
		<li class="list-group-item"><h4>DOB      : </h4><jsp:getProperty name="upj" property="dob"></jsp:getProperty></li>
		<li class="list-group-item"><h4>Sex      : </h4><jsp:getProperty name="upj" property="sex"></jsp:getProperty></li>
		<li class="list-group-item"><h4>E-mail   : </h4><jsp:getProperty name="upj" property="email"></jsp:getProperty></li>
		<li class="list-group-item"><h4>Blood-G  : </h4><jsp:getProperty name="upj" property="bloodg"></jsp:getProperty></li>
		<li class="list-group-item"><h4>Phone-No : </h4><jsp:getProperty name="upj" property="phno"></jsp:getProperty></li>
		<li class="list-group-item"><h4>State    : </h4><jsp:getProperty name="upj" property="state"></jsp:getProperty></li>
		</ul>
</div>

</body>
<%@ include file="footer.jsp" %>
</html>