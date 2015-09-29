<%@page import="org.ndt.obs.entity.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.ndt.obs.entity.CartItem"%>
<%@page import="java.util.List"%>
<%@page import="org.ndt.obs.entity.Cart"%>
<%@page import="org.ndt.obs.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
 <link  href="order.css" rel="stylesheet" type="text/css">
<body>
<img src="bkk5.jpg" style="width:100%;height:150%;position:absolute;top:0;left:0;z-index:-8000;">
<h2 align="center" class="b1">ONLINE BOOK STORE</h2>
	<hr/>
<%
String name=(String)session.getAttribute("NAME");
User user=(User)request.getAttribute("USER");
float  totalPrice=0;
String username=null;
int isbn=0;
String title=null;
float price=0;
%>
<h2 align="center" class="b4"> USER DETAILS</h2>

<%-- <%ArrayList<User> userlist=(ArrayList<User>) request.getAttribute("usrList");%> --%>
   <%ArrayList<Book> booklist=(ArrayList<Book>) request.getAttribute("BookList");%>
    <p style="position: absolute;top: 10px;left: 30px;color: orange; font-family:fantasy; font-size: 35px;">WELCOME    <%=name %></p>
<form action="UserServlet" method="post">
	<table border="15" align="center"  bgcolor="highlight">
			<thead>
				<tr>
				<td bgcolor="silver">USER NAME</td>
					<td bgcolor="silver">USER MAILID</td>
					<td bgcolor="silver">DOOR NUM</td>
					<td bgcolor="silver">STREET</td>
					<td bgcolor="silver">CITY</td>
					<td bgcolor="silver">STATE</td>
					<td bgcolor="silver">PINCODE</td>
					<td bgcolor="silver">PHONENUMBER</td>
					
				</tr>
			</thead>
			
		     <tr>
		     	
		     	<td><%=username=user.getUserName()%></td>
		     	<td><%=user.getMailId() %></td>
		     	<td><%=user.getDoornum()%></td>
		     	<td><%=user.getStreet() %></td>
		     	<td><%=user.getCity() %></td>
		        <td><%=user.getState() %></td>
		        <td><%=user.getPincode() %></td>
		        <td><%=user.getPhonenum() %></td>
		     	
		     
		     </tr>
	<tr>	 
   
     </tr>
      	     
     </table>
      <h2 align="center" class="b4" > ORDER DETAILS</h2>
  </form>
	<% 
	
		Cart cart= (Cart)session.getAttribute("cart");
		 ServletContext sc = getServletConfig().getServletContext();
		if(sc.getAttribute("cart") != null){
			List<CartItem> it = (List<CartItem>)sc.getAttribute("cart");
		  
		    for(int i = 0; i< it.size(); i++){
		        out.println(it.get(i).getPrice());
		    }
		}
		
		else if(cart==null)
		{
			cart=new Cart();
			session.setAttribute("Cart", cart);
			
		}
		List<CartItem> items = cart.getItems();
		
			
	%>
	 
	<form action="NewCartServlet" method="post">
	<table border="15" align="center" bgcolor="highlight" >
	
			<thead>
				<tr>
					<td bgcolor="silver">BOOK ISBN</td>
					<td bgcolor="silver">BOOK TITLE</td>
					<td bgcolor="silver">BOOK PRICE</td>
					<!-- <td>TOTAL PRICE</td> -->
				</tr>
			</thead>
			<% 
				
		            for (CartItem item : items)
		            {
		               
		     %>
		     <tr>
		     	<td><%=isbn=item.getIsbn()  %></td>
		     	<td><%=title=item.getTitle() %></td>
		     	<td><%=price=item.getPrice() %></td>
		     	<%
		     	totalPrice+=item.getPrice();
		     	%>
		     	<td><a href="http://localhost:8080/OnlineBookStore/NewCartServlet?ACTION=remove&hdnid=<%=item.getIsbn() %>"><input type="submit" value="REMOVE" class="b3"></a></td>
		     </tr>
		     <tr>
		     <td><%=totalPrice %>
		     </tr>
	<tr>	 
     <input type="hidden" name="hdnid" value="<%=item.getIsbn()%>">
     <input type="hidden" name="ACTION" value="remove"> 
     </tr>
      <%
		            }
		 %>	
		    	     
     </table>
	</form>	
	 <form action="OrderServlet" method="post">
	
				<input type="submit" value="Confirm Order" class="b7" >
				<!-- <a href="http://localhost:8080/OnlineBookStore/thankyou.jsp">Next</a> -->
		
	<input type="hidden" name="username" value="<%=username%>">
			<input type="hidden" name="totalAmt" value="<%=totalPrice%>">
			<input type="hidden" name="isbn" value="<%=isbn%>">
			<input type="hidden" name="title" value="<%=title%>">
			<input type="hidden" name="price" value="<%=price%>">
	 </form> 
	<br/>
	<form action="Login" method="post">
<%-- 	<%=username=user.getUserName()%> --%>

	<!-- <input type="submit" value="ORDERHISTORY"> -->
	<input type="hidden" name="usrName" value="<%=username%>">
	<input type="submit" name="ACTION" value="ORDER HISTORY" style="position: absolute;top: 5px;left: 1000px;"> 
	 <input type="button" value="LOGOUT" style="position: absolute;top: 5px;left: 1150px;" onclick="window.location='http://localhost:8080/OnlineWebProject/welcome.jsp'">
	</form>
  <input type="button" value="HOME" class="b5" onclick="window.location='http://localhost:8080/OnlineWebProject/welcome.jsp'">
</body>
</html>