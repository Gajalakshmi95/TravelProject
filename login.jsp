
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
*{
	margin:0px;
}

.log {
	font-size:25px;
	background-image:url("greyhound-travel-passes-hop-on-hop-off-km-austraia-oz-epic-gap-year-1.jpg");
	background-repeat: no-repeat;
	height:667px;
	width:100%;
	background-size:cover;
	}
	
.user{
	width:500px;
	margin:0 auto;
	text-align:center;
	padding-top:10px;
 	}
 	
.user label{
	text-align:center;
	display:block;
	float:left;
	width:175px;
 	}
 
.border{
	border-width:10px;
	background-color:rgba(211, 211, 211, 0.42);
 	}
 
.button{
	font: bold 20px garmond;
	}
	
.pass{
	font-size:20px;
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
<title>Travel login page</title>
</head>
<body>
<div class= "log">
<a class="back" href="index.html">Back</a><br><br>
<form class="user" method="post" action="/sessioncreate">
<img src="logo.png"  style="width:170px;height:80px;"><br><br>
	<fieldset class="border">
	<label>Email:</label><input type = "email" placeholder="Enter mail id" name = "email" required><br><br>
	<label>Password:</label>  <input type = "password" placeholder="Enter password" name = "password" required><br><br>
	<a class="pass" href="forgot.jsp">Forgot Password?</a><br><br>
	<input type = "submit" class="button"   value = "Login">
	</fieldset><br>
	</form>
</div>
</body>
</html>