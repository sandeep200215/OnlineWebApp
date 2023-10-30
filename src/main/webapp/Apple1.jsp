<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="HeaderLogout.html" %>
<%@ page import="com.beans.ProductBean"%>
<%@ page import="com.helper.*" %>
<%@ page import="com.beans.UserBean" %>
<%@ page import="java.sql.*" %>

 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apple1</title>
<style>
.content
{
height:600px;
padding:30px,200px;
display:flex;
flex-wrap:wrap;
margin-top:20px;
margin-bottom:20px;

}
.img1
{
width:300px;
height:300px;

}
.i1,.i2,.i3
{
width:300px;
height:450px;
border:2px solid blue;
padding:14px 20px;
margin-right:20px;
margin-left:50px;
margin-bottom:20px;
}
.btn1
{
 padding:12px 14px;
 font-size:18px;
 width:100px;
 background-color:orange;
 color:white;
margin-top:1px;
margin-left:380px;
margin-bottom:100px;
 border:none;
 outline:none;
}
.btn2
{
padding:12px 20px;
font-size:22px;
width:100px;
background-color:skyblue;
color:white;
margin-top:1px;
margin-left:300px;
border:none;
outline:none;
text-decoration:none;
}
</style>
</head>
<body>

<%

 Connection conn=new GetConnection().getConnection();
 PreparedStatement ps=conn.prepareStatement("select * from product limit 3,3");
ResultSet rs= ps.executeQuery();
ProductBean []product=new ProductBean[3];
int i=0;
while(rs.next())
{  
	product[i]=new ProductBean();
	product[i].setCompany(rs.getString("company"));
	product[i].setModel(rs.getString("model"));
	product[i].setPrice(rs.getInt("price"));
	product[i].setFeatures(rs.getString("features"));
	i++;
}
session.setAttribute("product3",product[0]);
session.setAttribute("product4", product[1]);
session.setAttribute("product5", product[2]);
%>
<%
if(request.getParameter("btn").equals("purchase"))
{
	RequestDispatcher rd=request.getRequestDispatcher("Purchase.jsp");
	rd.forward(request,response);
			
}

if(request.getParameter("btn").equals("next"))
{  
	
	if(request.getParameter("c1")==null)
		session.removeAttribute("product0");
	 if(request.getParameter("c2")==null)
		 session.removeAttribute("product1");
	 if(request.getParameter("c3")==null)
		 session.removeAttribute("product2");
}
%>

<form action="Purchase.jsp" method="post">
<div class="content">
<div class="i1">
<img class="img1" src="images/image.jpg">
<input type="checkbox" name="c7" value="<%=product[0].getModel() %>">select to cart
<h5><%=product[0].getCompany() %></h5>
<h5><%=product[0].getPrice()%></h5>
<h5><%=product[0].getFeatures() %></h5>
</div>
<div class="i2">
<img class="img1" src="images/image1.jpg">
<input type="checkbox" name="c8" value="<%=product[1].getModel() %>">select to cart
<h5><%=product[1].getPrice() %></h5>
<h5><%=product[1].getCompany() %></h5>
<h5><%=product[1].getFeatures()%></h5>
</div>
<div class="i3">
<img class="img1" src="images/image3.jpg">
<input type="checkbox" name="c9" value="<%=product[2].getModel() %>">select to cart
<h5><%=product[2].getCompany() %> </h5>
<h5> <%=product[2].getPrice() %></h5>
<h5><%=product[2].getFeatures() %></h5>
</div>

</div>
<a  class="btn2" href="Apple.jsp">previous</a>
<input class="btn1" type="submit" name="btn" value="purchase">
<p></p>
</form>

</body>
</html>