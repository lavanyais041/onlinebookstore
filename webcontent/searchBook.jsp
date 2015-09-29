<%@page import="org.ndt.obs.entity.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">
.l4
{
position:absolute;
font-style: normal;
font-size:20px;
top: 5px;
left: 850px;
width: 15%;
color: blue;
}
 .l3
{
font-size:50px;
font-style: italic;
color: blue;
}
 </style>
<body>
<img src="E:\\COURSE\\book1.jpg" style="width:100%;height:100%;position:absolute;top:0;left:0;z-index:-5000;">	
	<%ArrayList<Book> booklist=(ArrayList<Book>) request.getAttribute("BookList");%>
	<form action="NewCartServlet" method="post">
	<h2 align="center" class="l3">ONLINE BOOK STORE</h2>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<table border="15" align="center"  bgcolor="silver" >
	  <thead>
		<tr>
			<td bgcolor="gray">BOOK ISBN</td>
			<td bgcolor="gray">BOOK TITLE</td>
			<td bgcolor="gray">BOOK PRICE</td>
			<td bgcolor="gray">AUTHOR NAME</td>
			<td bgcolor="gray">AUTHOR MAILID</td>
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
					  <img src="st1.jpg" style="width:50%;height:50%;position:absolute;top:0;left:0;z-index:-5000;">;	
							<% 
							  }
				  else if(title.equals("java"))
				  {	  
					  %>
					 <img src="pr5.jpg" style="width:40%;height:40%;position:absolute;top:400px;left:100px;z-index:-5000;">;	
			<% 
				} 
				  else if(title.equals("python"))
				  {
					  %>
					  <img src="pr10.jpg" style="width:40%;height:40%;position:absolute;top:400px;left:100px;z-index:-5000;">;
					  <% 
				  }
				  else if(title.equals("c++"))  
				  {
					  %>
					   <img src="pr7.jpg" style="width:40%;height:40%;position:absolute;top:400px;left:100px;z-index:-5000;">;
					  <%  
				  }
		    %> 
		<tr>
			<td><%=b.getBookIsbn()%></td>
			<td><%=b.getBookTitle()%></td>
			<td><%=b.getBookprice()%></td>
			<td><%=b.getAuthor().getAuthorName()%></td>
			<td><%=b.getAuthor().getAuthorMailId()%></td>
			<td><input type="submit" value="Add To Cart" style="background-color:olive; align="right"></td>
			
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
		 <input type="button" value="LOGOUT" class="l4" align="middle" style="background-color:olive;   align="right" onclick="window.location='http://localhost:8080/OnlineWebProject/welcome.jsp'">
</form>
</body>
</html>