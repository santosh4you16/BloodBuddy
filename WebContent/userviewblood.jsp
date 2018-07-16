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


<script  >
function addVal(){
	
	var num=document.getElementById("bag");
	if(num.value==null||num.value==""){
		alert("Please Enter No of Bags!");
		num.style.borderColor="red";
		return false;
	}
}
</script>
<body>
<div class="well">
<center><h3>Blood Record (<%= session.getAttribute("SessName")%>)</h3></center>
</div>
<div class="container">

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
		<jsp:useBean id="pojo" class="beans.BloodPojo" scope="session"></jsp:useBean>
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
<hr>
<div class="container">
<a href="userhoslist.jsp" class="btn btn-primary">Go Back</a>
<button class="btn btn-danger" data-toggle="modal" data-target="#mdl">Buy Blood</button>
<div class="modal fade" id="mdl">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h3 class="modal-title">Select Blood and Number of bags!</h3>
			</div>
			<div class="modal-body">
			
			<form action="UserBuyblood" onsubmit="return addVal()" method="get">
				<div class="form-group">
				<label for="blood">Blood Group:</label>
				<select class="form-control" id="blood" name="blood">
				 <option value="ab_pos">AB+</option>
				 <option value="ab_neg">AB-</option>
				 <option value="a_pos">A+</option>
				 <option value="a_neg">A-</option>
				 <option value="b_pos">B+</option>
				 <option value="b_neg">B-</option>
				 <option value="o_pos">O+</option>
				 <option value="o_neg">O-</option>
				</select>
				</div>
			     
			     <div class="form-group">
			     <label for="bag">Bag(s):</label>
			     <input type="number" placeholder="No' of Bags" class="form-control" id="bag"  name="bag">
			     </div>
					<button type="submit" class="btn btn-success">Buy</button>
			</form>
			</div>
			
		</div>
	</div>
</div>

</body>
<%@ include file="footer.jsp" %>
</html>