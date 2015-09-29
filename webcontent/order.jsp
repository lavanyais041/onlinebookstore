<%@page import="org.ndt.obs.entity.CartItem"%>
<%@page import="java.util.List"%>
<%@page import="org.ndt.obs.entity.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.ndt.obs.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
<%ArrayList<User> userlist=(ArrayList<User>) request.getAttribute("usrList");%>
<form action="UserServlet" method="post">
	<table border="15" align="center"  bgcolor="silver">
			<thead>
				<tr>
					<td>USER NAME</td>
					<td>USER MAILID</td>
					<td>USER ADDRESS</td>
					<td>USER PHONENUM</td>
				</tr>
			</thead>
			<% 
				
		            for (User usr :userlist )
		            {
		               
		     %>
		     <tr>
		     	<td><%=usr.getUserName()%></td>
		     	<td><%=usr.getMailId() %></td>
		     	<td><%=usr.getAddress()%></td>
		     	<td><%=usr.getPhonenum() %></td>
		     	
		     
		     </tr>
	<tr>	 
   
     </tr>
      <%
		            }
		 %>	   	     
     </table>
     <table border="15" align="center"  bgcolor="silver">
			<thead>
				<tr>
					<td>BOOK ISBN</td>
					<td>BOOK TITLE</td>
					<td>BOOK PRICE</td>
				</tr>
			</thead>
			<% 
				
		            for (CartItem item : items)
		            {
		               
		     %>
		     <tr>
		     	<td><%=item.getIsbn()  %></td>
		     	<td><%=item.getTitle() %></td>
		     	<td><%=item.getPrice() %></td>
		     	<td><a href="http://localhost:8080/OnlineBookStore/NewCartServlet?ACTION=remove&hdnid=<%=item.getIsbn() %>"><input type="submit" value="REMOVE"></a></td>
		     </tr>
	<tr>	 
     <input type="hidden" name="hdnid" value="<%=item.getIsbn()%>">
     <input type="hidden" name="ACTION" value="remove"> 
     </tr>
      <%
		            }
		 %>	   	     
     </table>
     <input type="submit"  value="ORDER"  >
	</form>	




</body>
</html>