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
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<body>
<body>
<div id="banner">
  

</div>
<div id="nestdiv">

<marquee behavior="alternate" direction="right">
<img  src="images/vvv.jpg">
</marquee>

</div>
<form action="userreqhandle.jsp">
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
	
	<!-- Logo -->
	<div class="navbar-header">
		<a href="userprofile.jsp" class="navbar-brand"><%=((String)session.getAttribute("SessName")).toUpperCase() %></a>
	</div>
	
	<!-- menu items -->
	
	<div>
		<ul class="nav navbar-nav">
			<li><a href="Userprofiledetail">MyProfile</a></li>
			
			<!-- drop down menu -->
			<%
				ArrayList al=(ArrayList)session.getAttribute("Requests");
				if(al!=null){
				al.remove(session.getAttribute("SessName"));%>
			<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown" >Requests(<% out.println("<b style=\"color:red\">"+al.size()+"</b>"); %>) <span class="caret"></span></a>
			<ul class="dropdown-menu">
				<% String s=" - needs Blood";
				Iterator<String> i=al.iterator();
				while(i.hasNext()){
					String name=i.next();
					out.println("<li><button class=\"btn btn-link\" type=\"submit\" style=\"color:blue\" name=\"alname\" value=\""+name+"\">"+name.toUpperCase()
					+s+"</button></li>");
				}}
				%>
			</ul>
			</li>
		</ul>
		<!-- Right align -->
		<ul class="nav navbar-nav navbar-right">
			<li><a href="userpasschange.jsp">Change Password</a></li>
			<li><a href="Logout">logout</a></li>
			
		</ul>
	</div>
	</div>
</nav>
</form>
<script type="text/javascript" src="javascript/particles.js"></script>
<script type="text/javascript" src="javascript/app.js"></script>
</body>

</html>