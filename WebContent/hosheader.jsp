<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="style.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style >
#banner{
height:100px;

background-color:grey;
}

#nestdiv {
top:0px;
left:0px;
position:absolute;
height:100px;
width:30%;
z-index:1
}
</style>
<body>
<div id="banner">
  

</div>
<div id="nestdiv">

<marquee behavior="alternate" direction="right">
<img  src="images/vvv.jpg">
</marquee>

</div>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
	
	<!-- Logo -->
	<div class="navbar-header">
		<a href="hosprofile.jsp" class="navbar-brand"><%=((String)session.getAttribute("SessName")).toUpperCase()%></a>
	</div>
	
	<!-- menu items -->
	
	<div>
		<ul class="nav navbar-nav">
			<li><a href="Hosprofiledetail">MyProfile</a></li>
			
			<!-- drop down menu -->
			
			<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Registered Hospitals<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="#">sub menu 1</a></li>
				<li><a href="#">sub menu 2</a></li>
				<li><a href="#">sub menu 3</a></li>
			</ul>
			</li>
		</ul>
		<!-- Right align -->
		<ul class="nav navbar-nav navbar-right">
			<li><a href="hospasschange.jsp">Change Password</a></li>
			<li><a href="Logout">logout</a></li>
			
		</ul>
	</div>
	</div>
</nav>
<script type="text/javascript" src="javascript/particles.js"></script>
<script type="text/javascript" src="javascript/app.js"></script>
</body>

</html>