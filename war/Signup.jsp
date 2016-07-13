<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>sign up page</title>
<style type="text/css">
*{
  margin:0px;
}
.user{
	width:500px;
	margin:0 auto;
	text-align:center;
	padding-top:5px;
	}
 
.user label{
	display:block;
	float:left;
	width:175px;
 	}
 .border{
	border-width:10px;
	background-color:rgba(211, 211, 211, 0.42);
 	}
.sign {
	font-size: 20px;
	background: url("greyhound-travel-passes-hop-on-hop-off-km-austraia-oz-epic-gap-year-1.jpg");
	background-repeat: no-repeat;
	background-size:cover;
	height:741px;
	}
.button {
	font: bold 20px garmond;
	}
.back{
	float:right;
	margin-top:30px;
	margin-right: 50px;
	text-decoration:none;
	color:black;
	font-size:35px;
	}
.pass
	{
	margin:5px;
	}
.popup .popuptext {
    visibility: hidden;
    width: 160px;
    background-color: #555;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 8px 0;
    position: absolute;
    z-index: 1;
    bottom: 125%;
    left: 50%;
    margin-left: -80px;
}
.popup {
    position: relative;
    display: inline-block;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}
.show {
    visibility: visible !important;
    -webkit-animation: fadeIn 1s;
    animation: fadeIn 1s;
}
@-webkit-keyframes fadeIn {
    from {opacity: 0;} 
    to {opacity: 1;}
}

@keyframes fadeIn {
    from {opacity: 0;}
    to {opacity:1 ;}
}


</style>
</head>
<script type="text/javascript">
function checkValidate()
{
var text = document.getElementById("name").value;
var letter = /^[a-zA-Z]+$/;
if(!letter.test(text)) 
{
alert("Enter only Alphabets");
return false;
}
var fpassword = document.f1.password.value;
var spassword = document.f1.password1.value;
if(Pattern.matches("[a-zA-Z0-9]*{0,7}", fpassword))
	{
		alert("Password Must be atleast 8 characters");
		return false;
	}
if(!(spassword==fpassword))
{
alert("Password should be same");
return false;
}
else
{
return true;
}
}

function myFunction() {
    var popup = document.getElementById('myPopup');
    popup.classList.toggle('show');
}

</script>
<% 
    response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server 
    response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance 
    response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
    response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility 
%>
<%if(session.getAttribute("mailid")!=null)
	{
	response.sendRedirect("home.jsp");
	}
	%>
<body>
<div class="sign">
<a class="back" href="index.html">Back</a><br><br>
<form name = "f1" class="user" onsubmit="return checkValidate()" method = "post" action="/demo">
<img src="logo.png"  style="width:170px;height:80px;"><br><br>
<fieldset class="border">

	<label> Name: </label>  <input type="text" id="name" placeholder="Enter name" name="name" required> <br><br>
	<label> Email: </label>  <input type="email" id="email" placeholder="Enter mail id" name="email" required><br><br>
	<label> Password: </label>	
	<input type="password" class="pass" id="password" placeholder="Enter password" name="password" required><br><br>
	<label>Re-Enter Password: </label>
 	<input type="password" name="password1" id="repass"  placeholder = "Re-Enter Password" required><br><br>
	<label>Gender: </label><input type="radio" name="gender"> Male
	<input type="radio" name="gender"> Female<br><br>
	

	<label>Mobile Number:</label> <input type= "number" id="mobnumber" placeholder="Enter mobile number" name="mobileno" required><br><br>
	<input type="submit" class="button"  value="Sign Up">
	<input type="reset" class="button" value="Reset">
</fieldset><br>
</form>
</div>
</body>
</html>
