<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%@ include file="hosheader.jsp" %>
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
</head>
<body>
<div class="well" >
<center><h4>Welcome <%=session.getAttribute("SessName") %>
 - Welcome to The Blood Portal</h4></center>	
</div>
<div class="container">
	<form action="AddBlood" onsubmit="return addVal()" method="get">
			
	
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
	     
	     
		<button type="submit" class="btn btn-success">Add</button>
	</form>
</div>
<div class="container">
<hr>
<a href="Bloodtable" class="btn btn-danger">View Blood Records</a>
</div>

</body>
<%@ include file="footer.jsp" %>
</html>