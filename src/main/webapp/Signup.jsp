<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>

<style>
*
{
padding:0;
margin:0;
}
body
{
  background-image:url(ss2.jpg);
  background-size:cover;
  background-position:center;'
}
.c1
{
	position:fixed;
	left:35%;
	right:35%;
	border:1px solid #888;
	top:20px;
	padding:10px;
	margin-top:30px;
	background-color:white;

}
.c2
{
	box-sizing:border-box;
	width:100%;
	height:50px;
	padding:14px 20px;
	text-align:center;
	color:white;
	background-color:red;
	font-size:20px;
   	margin-bottom:10px;
}
input[type=text],input[type=password]
{
box-sizing:border-box;
width:100%;
padding:10px 12px;
margin-top:8px;
margin-bottom:8px;

}
input[type=submit]
{
box-sizing:border-box;
	width:100%;
	color:white;
	padding:10px 15px;
	text-align:center;
	color:white;
	background-color:green;
	font-size:20px;
     border:none;
     outline:none;
   
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<div>
<form action="Register" method="post">
<div class="c1">
<div class="c2">
<b>Register Here</b>
</div>
<b>UserName</b><br>
<input type="text" placeholder="Enter username" name="uname"><br>
<b>Password</b><br>
<input type="password" placeholder="Enter password" name="pass"><br>
<b>Mobile No</b><br>
<input type="text" placeholder="Enter mobile no" name="mob"><br>
<b>Address</b><br>
<input type="text" placeholder="Enter Address" name="address"><br>
<input type="submit" value="Register">

</div>

</form>
</div>

</body>
</html>