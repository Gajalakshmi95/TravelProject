<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
background-image: url("background.jpg");
background-repeat: no-repeat;
background-size: cover;
}
.back {
margin-left: 1270px;
margin-top: -200px;
height: 30px;
border-radius: 4px;
border: 1px solid #3079ed;
background-color: #4d90fe;
color: white;
font-weight: bold;
}
.dropdown {
font-size: 20px;
color: blue;
}
.dropdown:HOVER {
font : bold 22px garamond; 
}
</style>
</head>
<body>
<input type ="submit" value = "Back" onclick="window.location.href='home.jsp'" class ="back" width="48" height="48"/>
<img src = "logo.png" style="width:170px; height:80px;">
<hr/>
<select class = "dropdown">
<option value="chennai">Chennai</option>
<option value="kancheepuram">Kancheepuram</option>
<option value="madurai">Madurai</option>
<option value="salem">Salem</option>
</select>
</body>
</html>