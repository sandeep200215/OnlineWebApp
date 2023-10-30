<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import ="java.util.*" %>
 <%@ page import="com.beans.*" %>
 <%@ page import="java.sql.*" %>
 <%@ page import="com.helper.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>purchase</title>
<style>
body
{
background-color:pink;
}
.card
{
 border:2px solid white;
 margin-left:40%;
 margin-right:40%;
 margin-top:50px;
 background-color:skyblue;
}
</style>
</head>
<body>
<%!
ProductBean  obj;
%>
<div class="card">
<%
if(request.getParameter("c1")==null)
{
	session.removeAttribute("product0");
}
if(request.getParameter("c2")==null)
{
	session.removeAttribute("product1");
}
if(request.getParameter("c3")==null)
{
	session.removeAttribute("product2");
}
if(request.getParameter("c7")==null)
{
	session.removeAttribute("product3");
}
if(request.getParameter("c8")==null)
{
	session.removeAttribute("product4");
}
if(request.getParameter("c9")==null)
{
	session.removeAttribute("product5");
}

 Enumeration e=session.getAttributeNames();
 int total=0;

 while(e.hasMoreElements())
 {
	 String s=(String)e.nextElement();
	 if(!(s.equals("uname")||s.equals("pass")))
	 {
		
		 
		 obj=(ProductBean)session.getAttribute(s);
		 out.println("<h4 style='text-align:center'> Model Name:"+obj.getModel()+"</h4>");
		 out.println("<h4 style='text-align:center;'>Price:"+obj.getPrice()+"</h4>");
		 total=total+obj.getPrice();
		 
	 }
 }
 out.print("<h4 style='text-align:center;'>Total Price:"+total+"</h4>");

%>
<%

Connection conn=new GetConnection().getConnection();
 PreparedStatement ps=conn.prepareStatement("select * from users where uname=? and password=?");
 ps.setString(1, (String)session.getAttribute("uname"));
 ps.setString(2, (String)session.getAttribute("pass"));
 ResultSet rs=ps.executeQuery();
 rs.next();
out.print("<h4 style='text-align:center'>Username:"+rs.getString("uname")+"</h4>");
out.print("<h4 style='text-align:center'>Address:"+rs.getString("address")+"</h4>");
 
%>
</div>
</body>
</html>