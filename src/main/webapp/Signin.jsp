<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.servlet.LoginServlet" %>
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
  background-image:url(online.jpg);
  background-size:cover;
  background-position:center;'
}
.modal
{ background-color:white;
	position:fixed;
	box-sizing:border-box;
	border:1px solid #888;
	left:35%;
	right:35%;
	top:20px;
	padding:5px;
}
.c2
{
 box-sizing:border-box;


text-align:center;
color:white;
bottom-top:10px;
padding:15px 10px;
margin-bottom:10px;
}
input[type="text"],input[type="password"]
{
box-sizing:border-box;
width:100%;
padding:10px 15px;

margin-bottom:20px;
}
input[type="submit"]
{ 
background-color:green;
width:100%;
color:white;
padding:10px 15px;
box-sizing:border-box;
text-align:center;
	font-size:20px;
     border:1px;
     outline:none;
}
.container2
{

padding:5px 10px;



}
.cancelbtn
{

text-align:center;
text-align:below;
padding:20px;
}
.psw
{
text-align:right;
 
margin-bottom:10px;

 
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="modal">
<form action="LoginServlet" method="post">
<div class="c2">

<b>User Name</b>
<input type="text" placeholder="Enter username" name="username"><br>
<b>Password</b>
<input type="password" placeholder="Enter password" name="password"><br>
<input type="submit" value="Login"></div>
<span class="container2">
<input type="checkbox" checked="checked" name="remember">Rememeber me

<span class="cancelbtn">
<a href="Home.jsp">cancel</a></span>
<span class="psw">Forgat<a href="#">password?</a>
</span>

</span>
</form>
</div>
</body>
</html>