<%@page import="java.util.ArrayList"%>
<%@page import="org.ndt.obs.entity.Order"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link  href="cart.css" rel="stylesheet" type="text/css">
<body>
<img src="bkk5.jpg" style="position:absolute;top:0;left:0;z-index:-5000;width:100%;height:150%;">
  <h2 align="center" class="b1"> ONLINE BOOK STORE</h2>
  <hr/>
  <br/>
   <br/>
   <br/>
   <br/>
<%ArrayList<Order> odrlist=(ArrayList<Order>) request.getAttribute("USERORDER");%>

<form action="OrderServlet" method="post">
<h1 class="b9">USER ORDER HISTORY</h1>
	<table border="15" align="center"  bgcolor="highlight">

			<thead>
				<tr>
				<td bgcolor="silver">USER NAME</td>
					<td bgcolor="silver">ORDERID</td>
					<td bgcolor="silver">BOOKISBN</td>
					<td bgcolor="silver">BOOKTITLE</td>
					<td bgcolor="silver">PRICE</td>
					<td bgcolor="silver">TOTALPRICE</td>				
				</tr>
			</thead>
			<% 
				
		            for (Order odr1:odrlist)
		            {
		               
		     %>
		     <tr>
		     	
		     	<td><%=odr1.getUsername()%></td>
		     	<td><%=odr1.getOrderId() %></td>
		     	<td><%=odr1.getOritm().getBookIsbn()%></td>
		     	<td><%=odr1.getOritm().getBookTitle() %></td>
		     	<td><%=odr1.getOritm().getBookPrice() %></td>
		        <td><%=odr1.getTotalprice() %></td>
		    
		     </tr> 
		     <%
		            }
		 %>	
	</table>	 
   
     </tr>
    
  </form>
  <input type="button" value="LOGOUT" style="position: absolute;top: 5px;left: 1150px;" onclick="window.location='http://localhost:8080/OnlineWebProject/welcome.jsp'">
 <!--  <input type="button" value="BACK" style="position: absolute;top: 5px;left: 1250px;" onclick="window.location='http://localhost:8080/OnlineWebProject/orderbooks.jsp'"> -->
</body>
</html>