<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
    <%@ page import="com.helper.GetConnection" %>
    <%@ page import="com.beans.ProductBean" %>
<%@ include file="HeaderLogout.html" %>

<!DOCTYPE html>
<html>
<head>
<style >
body
{
background-color:white;
}
.content
{
height:600px;
padding:30px,200px;
display:flex;
flex-wrap:wrap;
margin-top:20px;
margin-bottom:20px;

}
.i1,.i2,.i3,.i4,.i5,.i6
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

 border:none;
 outline:none;
}
.btn2
{
padding:12px 14px;
font-size:18px;
width:100px;
background-color:skyblue;
color:white;
margin-top:1px;
margin-left:200px;
border:none;
outline:none;
}
.img1
{
width:300px;
height:300px;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
int j=0;
Connection conn=new GetConnection().getConnection();
PreparedStatement ps=conn.prepareStatement("select * from product limit  0,3");
ResultSet rs=ps.executeQuery();
ProductBean []product=new ProductBean[3];
int i=0;
while(rs.next())
{
product[i]=new ProductBean();
product[i].setModel(rs.getString("model"));
product[i].setCompany(rs.getString("company"));
product[i].setFeatures(rs.getString("features"));

product[i].setPrice(rs.getInt("price"));
product[i].setImage(rs.getString("image"));
i++;


}
session.setAttribute("product0",product[0]);
session.setAttribute("product1",product[1]);
session.setAttribute("product2",product[2]);
%>
<form action="Apple1.jsp" method="post">
 <div class="content">
 <div class="i1">
 <img class="img1" src="image.jpg">
 <input type="checkbox" name="c1" value="<%=product[0].getModel() %>">select to cart
 <h5><%=product[0].getModel() %></h5>
 <h5><%=product[0].getPrice() %></h5>
 <h5><%=product[0].getFeatures() %></h5>
 </div>

 <div class="i2">
 <img class="img1" src="image1.jpg">
 <input type="checkbox" name="c2" value="<%=product[0].getModel() %>">select to cart
 <h5><%=product[1].getModel() %></h5>
 <h5><%=product[1].getPrice() %></h5>
 <h5><%=product[1].getFeatures() %></h5>
 </div>
  <div class="i3">
 <img class="img1" src="image3.jpg">
 <input type="checkbox" name="c3" value="<%=product[2].getModel() %>">select to cart
 <h5><%=product[2].getModel() %></h5>
 <h5><%=product[2].getPrice() %></h5>
 <h5><%=product[2].getFeatures() %></h5>
 </div>
  <div class="i4">
 <img class="img1" src="image.jpg">
 <input type="checkbox" name="c4" value="<%=product[2].getModel() %>">select to cart
 <h5><%=product[2].getModel() %></h5>
 <h5><%=product[2].getPrice() %></h5>
 <h5><%=product[2].getFeatures() %></h5>
 </div>

  <div class="i5">
 <img class="img1" src="image1.jpg">
 <input type="checkbox" name="c5" value="<%=product[2].getModel() %>">select to cart
 <h5><%=product[2].getModel() %></h5>
 <h5><%=product[2].getPrice() %></h5>
 <h5><%=product[2].getFeatures() %></h5>
 </div>
 
  <div class="i6">
 <img class="img1" src="image3.jpg">
 <input type="checkbox" name="c6" value="<%=product[2].getModel() %>">select to cart
 <h5><%=product[2].getModel() %></h5>
 <h5><%=product[2].getPrice() %></h5>
 <h5><%=product[2].getFeatures() %></h5>
 </div>
   <input class="btn2" type="submit" name="btn" value="next">
    <input class="btn1" type="submit" name="btn" value="purchase">
<p></p>
 </div>

</form>


</body>
</html>