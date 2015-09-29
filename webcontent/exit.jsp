<%@page import="org.ndt.obs.service.OrderService"%>
<%@page import="org.ndt.obs.db.OrderDao"%>
<%@page import="org.ndt.obs.entity.Order"%>
<%@page import="org.ndt.obs.entity.OrderItem"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
 <link  href="exit.css" rel="stylesheet" type="text/css">
<body>
<h2 align="center" class="b1">ONLINE BOOK STORE</h2>
	<hr/>
<h1 style="position: absolute;font-family: fantasy;font-size: 20px;">
<%
   String order= (String)request.getAttribute("MESSAGE");
%>
</h1>
 <%--  <%
   int orderid= request.getAttribute("ORDERID");
%>  --%> 
<img src="bkk5.jpg" style="width:100%;height:100%;position:absolute;top:0;left:0;z-index:-5000;">
 <h2 align="center" class="b2" >THANK YOU</h2>
 <!-- <h2 align="center" class="l3">YOUR ORDER CONFORMED</h2> -->
 
 <%
 	if(order!=null){
 %>
 <p style="position: absolute;font-size: 25px;color: orange; left: 20px;"><%=order%></p>
 <%} %>
 <input type="button" value="CONTINUE SHOPPING" class="b3" onclick="window.location='http://localhost:8080/OnlineWebProject/welcome.jsp'">
</body>
</html>