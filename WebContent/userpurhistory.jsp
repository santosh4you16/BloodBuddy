<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Purchase History</title>
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
<center><h3>(<%=session.getAttribute("SessName") %>) Last Purchase Details:-</h3></center>
</div>
<div class="container">
		<jsp:useBean id="userpur" class="beans.Userpurpojo" scope="session"></jsp:useBean>
		<ul class="list-group">
		<li class="list-group-item"><h4>Username   : </h4><jsp:getProperty name="userpur" property="name"></jsp:getProperty></li>
		<li class="list-group-item"><h4>Blood - G     : </h4><jsp:getProperty name="userpur" property="bloodg"></jsp:getProperty></li>
		<li class="list-group-item"><h4>Bags      : </h4><jsp:getProperty name="userpur" property="bags"></jsp:getProperty></li>
		<li class="list-group-item"><h4>Cost (Rs.)      : </h4><jsp:getProperty name="userpur" property="cost"></jsp:getProperty></li>
		<li class="list-group-item"><h4>From Hospital      : </h4><jsp:getProperty name="userpur" property="hosname"></jsp:getProperty></li>
		</ul>
</div>

</body>
<%@ include file="footer.jsp" %>
</html>