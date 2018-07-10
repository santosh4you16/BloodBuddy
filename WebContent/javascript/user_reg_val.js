function validateForm(){

	var name=document.getElementById("Name");
	var date=document.getElementById("date");
	var sex=document.getElementById("Sex");
	var email=document.getElementById("email");
	var pwd=document.getElementById("pwd");
	var pwd1=document.getElementById("pwd1");
	var blood=document.getElementById("blood");
	var ph=document.getElementById("phne");
	
	if(name.value==null||name.value==""){
		alert("Name can't be bank!");
		name.style.borderColor="red";
		return false;
	}
	
	if(date.value==null||date.value==""){
		alert("Please enter date of birth");
		date.style.borderColor="red";
		return false;
	}
	



	if(pwd.value.length< 6){
		alert("password cannot be less than 6 characters!");
		pwd.style.borderColor="red";
		return false;
	}

	if(pwd.value!=pwd1.value){
		alert("Password did not match!");
		pwd.style.borderColor="red";
		pwd1.style.borderColor="red";
		return false;
	}
	 var phoneno = /^\+?([0-9]{2})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
	  if((ph.value.match(phoneno)))
	        {
	      return true;
	        }
	      else
	        {
	        alert("Invalid Phone Number");
	        ph.style.borderColor="red";
	        return false;
	        }

	
	
	
}
