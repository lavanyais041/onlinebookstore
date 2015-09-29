<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
     <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Insert title here</title>
    </head>
    <link  href="book.css" rel="stylesheet" type="text/css">
<body>
<%
   String order= (String)request.getAttribute("MESSAGE");
%>
      <img src="book1.jpg" style="width:100%;height:100%;position:absolute;top:0;left:0;z-index:-5000;"> 
	 <a href="SearchServlet?title=softwaretesting"><img src="st1.jpg"  class="b1"></a>
     <a href="SearchServlet?title=java"><img src="pr5.jpg"  class="b2"></a>
     <a href="SearchServlet?title=python"><img src="python.jpg"  class="b3"></a>
     <a href="SearchServlet?title=html"><img src="html.jpg"  class="b4"></a>
     <b class="b5">PRICE:Rs.600</b>
	 <b class="b6">PRICE:Rs.600</b>
	 <b class="b7">PRICE:Rs.350</b>
	  <b class="b8">PRICE:Rs.300</b>
     <h2 align="center" class="b9">ONLINE BOOK STORE</h2>
     <hr/>
   <!--   <input type="button"  value="LOGIN"  class="l6" style="background-color:gray; align="right"   onclick="window.location='http://localhost:8080/OnlineWebProject/welcomeuser.jsp'"  > -->
  <!--   <h2 align="center"class="l4">WELCOME TO ONLINE BOOK STORE</h2> -->
   <form action="SearchServlet" method="post">
   <label class="b10"> <b>ENTER THE TITLE OF THE BOOK TO BE SEARCHED:</b></label><input type="text"  name="title" id="title" size="10" placeholder="search book" class="b12">
   <input type="submit"  value="SEARCH" class="b11" onclick="window.location='http://localhost:8080/OnlineWebProject/search.jsp'" >
   
        <%
 	if(order!=null){
        %>
 <p class="b13"><%=order%></p>
      <%} %>
      <input type="button" value="LOGIN" class="b14" onclick="window.location='http://localhost:8080/OnlineWebProject/usrlogin.jsp'">
 </form>
 <br><br/>
 </body>
