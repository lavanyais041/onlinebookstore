<%@page import="org.ndt.obs.entity.CartItem"%>
<%@page import="java.util.List"%>
<%@page import="org.ndt.obs.entity.Cart"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link  href="cart.css" rel="stylesheet" type="text/css">
<body>
  <img src="bkk5.jpg" style="position:absolute;top:0;left:0;z-index:-5000;width:100%;height:100%;">
  <h2 align="center" class="b1"> ONLINE BOOK STORE</h2>
  <hr/>
  <br/>
   <br/>
   <br/>
   <br/>
	<% 
	
		Cart cart= (Cart)session.getAttribute("cart");
		 ServletContext sc = getServletConfig().getServletContext();
		if(sc.getAttribute("cart") != null){
			List<CartItem> it = (List<CartItem>)sc.getAttribute("cart");
		  
		    for(int i = 0; i< it.size(); i++)
		    {
		        out.println(it.get(i).getPrice());
		    }
		}
		
		else if(cart==null)
		{
			cart=new Cart();
			session.setAttribute("cart", cart);
			
		}
		List<CartItem> items = cart.getItems();
		
			
	%>
	<h1 class="b8">CART    ITEMS</h1>
	<form action="NewCartServlet" method="post">
	<table border="15" align="center"  bgcolor="highlight" >
			<thead>
				<tr>
					<td bgcolor="silver">BOOK ISBN</td>
					<td bgcolor="silver">BOOK TITLE</td>
					<td bgcolor="silver">BOOK PRICE</td>
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
		     	<td><a href="http://localhost:8080/OnlineBookStore/NewCartServlet?ACTION=remove&hdnid=<%=item.getIsbn() %>"><input type="submit" value="REMOVE" class="b4"></a></td>
		     </tr>
	<tr>	 
     <input type="hidden" name="hdnid" value="<%=item.getIsbn()%>">
     <input type="hidden" name="ACTION" value="remove"> 
     </tr>
      <%
		            }
		 %>	   	     
     </table>
      <input type="button"  value="ORDER" class="b6" onclick="window.location='http://localhost:8080/OnlineWebProject/logreg.jsp'" >
	   <input type="button"  value="SEARCH" class="b7" onclick="window.location='http://localhost:8080/OnlineWebProject/welcome.jsp'" >
	</form>	
	<input type="button" value="HOME" class="b5" onclick="window.location='http://localhost:8080/OnlineWebProject/welcome.jsp'"> 
</body>
</html>