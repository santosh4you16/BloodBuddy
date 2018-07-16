<html>
<head><title>Home:BloodBuddy</title></head>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ include file="header.jsp" %>
<script  src="javascript/registeropt.js"></script>
<body id="slider">
<div class="container">
<button class="btn btn-success btn-block" data-toggle="modal" data-target="#mdl1">Log In</button>
<div class="modal fade" id="mdl1">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h3 class="modal-title">Login as ?</h3>
			</div>
			<div class="modal-body">
			Keep calm and let us find and manage Blood for you.
			</div>
			<div class="modal-footer">
			<a href="login.jsp" class="btn btn-primary">User LogIn</a>
			<a href="hlogin.jsp" class="btn btn-warning">Hospital LogIn</a>
			</div>
		</div>
	</div>

</div>

</div>
<div class="container">
	<div id="myslider" class="carousel slide" data-ride="carousel">
	
		<ol class="carousel-indicators">
			<li data-target="#myslider" data-slide-to="0" class="active"><li>
			<li data-target="#myslider" data-slide-to="1" ><li>
			<li data-target="#myslider" data-slide-to="2" ><li>
			<li data-target="#myslider" data-slide-to="3" ><li>
		</ol>
		<div class="carousel-inner">
			<div class="item active">
				<a href="register.jsp"><img src="images/b4.jpg" width="100%"></a>
				<div class="carousel-caption">
				Click to Register
				</div>
				
			</div>
			<div class="item">
				<img src="images/banner.jpg" width="100%">
				<div class="carousel-caption">
				Picture 2
				</div>
			</div>
			<div class="item">
				<img src="images/consult.jpg" width="100%">
				<div class="carousel-caption">
				Picture 3
				</div>
			</div>
			<div class="item">
				<img src="images/b1.jpg" width="100%">
				<div class="carousel-caption">
				Picture 1
				</div>
			</div>
		</div>
		<a class="carousel-control left" href="#myslider" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
		</a>
		<a class="carousel-control right" href="#myslider" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right"></span>
		</a>
	</div>
</div>

<div class="container">
<button class="btn btn-primary btn-block" data-toggle="modal" data-target="#mdl">SignUp</button>
</div>
<div class="modal fade" id="mdl">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h3 class="modal-title">Register as ?</h3>
			</div>
			<div class="modal-body">
			You are going to be the part of our blood community. No more efforts to find and manage blood.
			</div>
			<div class="modal-footer">
			<a href="register.jsp" class="btn btn-primary">User SignUp</a>
			<a href="hregister.jsp" class="btn btn-warning">Hospital SignUp</a>
			</div>
		</div>
	</div>

</div>

</body>
<%@ include file="footer.jsp" %>
</html>
