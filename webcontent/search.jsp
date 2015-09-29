<%@page import="org.ndt.obs.entity.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
  <link  href="search.css" rel="stylesheet" type="text/css">
<body>
 <img src="bkk5.jpg"  style="width:100%;height:100%;position:absolute;top:0;left:0;z-index:-5000;">
<h2 align="center" class="b1">ONLINE BOOK STORE</h2>
	<hr/>
  <img src="im9.jpg" class="l8" style="width:20%;height:30%;position:absolute;top:190px;left:1030px;"> 	
	<%ArrayList<Book> booklist=(ArrayList<Book>) request.getAttribute("BookList");%>
	<form action="NewCartServlet" method="post">
	<br/>
	<br/>
	
 <h1 class="b2">SEARCH      DETAILS</h1>
	<br/>
	<br/>
	<table border="15" align="center"  bgcolor="highlight"  >
	  <thead>
		<tr>
			<td bgcolor="silver" >BOOK ISBN</td>
			<td bgcolor="silver">BOOK TITLE</td>
			<td bgcolor="silver">BOOK PRICE</td>
			<td bgcolor="silver">AUTHOR NAME</td>
			<td bgcolor="silver">AUTHOR MAILID</td>
		</tr>
	  </thead>
		 	<%
			if(booklist!=null)
			{
				for(Book b:booklist)
				{
					String title=null;
					  title=b.getBookTitle();
					  if(title.equals("softwaretesting"))
					{
						  %>
						  <img src="st1.jpg" style="width:30%;height:35%;position:absolute;top:350px;left:450px;z-index:-5000;">;	
						 <% 
					}
					  else if(title.equals("java"))
					  {	  
						  %>
						   <img src="pr5.jpg" style="width:30%;height:35%;position:absolute;top:350px;left:450px;z-index:-5000;">;
						
				         <% 
					}
					  else if(title.equals("python"))
					  {
						%>
						 <img src="python.jpg" style="width:30%;height:35%;position:absolute;top:350px;left:450px;z-index:-5000;">;
						 <%  
					  }
					 
					  else if(title.equals("html"))
					  {
						  %>
						   <img src="html.jpg" style="width:30%;height:35%;position:absolute;top:350px;left:450px;z-index:-5000;">;
						  <% 
					  }
			    %> 
		    
		<tr>
			<td><%=b.getBookIsbn()%></td>
			<td><%=b.getBookTitle()%></td>
			<td><%=b.getBookprice()%></td>
			<td><%=b.getAuthor().getAuthorName()%></td>
			<td><%=b.getAuthor().getAuthorMailId()%></td>
			<td><input type="submit" value="Add To Cart" class="b3"></td>
			
		</tr>
		

</table>
		<input type="hidden" name="ACTION" value="add"/>
		<input type="hidden" name="isbn" value="<%= b.getBookIsbn()%>"/>
		<input type="hidden" name="title" value="<%= b.getBookTitle()%>"/>
		<input type="hidden" name="price" value="<%= b.getBookprice()%>"/>
		<%
				}
			}
		%>
		 <input type="button" value="HOME" class="b4" onclick="window.location='http://localhost:8080/OnlineWebProject/welcome.jsp'"> 
</form>
</body>
</html>