<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot page</title>
<style type="text/css">
*{
margin:0px;
}
.back{
font-size:20px;
text-align:center;
}
.user{
font-size:30px;
width:400px;
margin:0 auto;
text-align:center;
padding-top:50px;
}

.border{
border-width:10px;
background-color:rgba(211, 211, 211, 0.42);
}

.forget {
font-size: 20px;
background: url("greyhound-travel-passes-hop-on-hop-off-km-austraia-oz-epic-gap-year-1.jpg");
background-repeat: no-repeat;
background-size:cover;
height:667px;

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
</style>
</head>
<body>
<div class = "forget">
<a class="back" href="login.jsp">Back</a><br><br>
<form class = "user" action="login.jsp">
<img src="logo.png"  style="width:170px;height:80px;"><br><br>
<fieldset class = "border">
<label>Email:</label> <input type = "email" placeholder="Enter mail id" name = "email"><br><br>
<input type = "submit"  class = "button" value = "Submit">
</fieldset><br>

</form>
</div>
</body>
</html>