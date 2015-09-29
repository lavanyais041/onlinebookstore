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
top: 10px;
left: 900px;
width: 15%;
color: black;
}
.l1
{
/* width:1000px;
height:1000px;
size:1000px;
img-size=100%;  */
font-size:30px;
top:500px;
font-style: italic;
color: infotext;
text-align: center;
text-shadow: highlight;
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
     
<form action="SearchServlet" method="post">
	  <h2 align="center" class="l3">ONLINE BOOK STORE</h2>
		
		<br><br>
		 <label class="l1"> ENTER THE TITLE OF THE BOOK TO BE SEARCHED:</label>
		  <!-- <input type="button" value="LOGOUT" class="l4" align="middle" style="background-color:highlight;   align="right" onclick="window.location='http://localhost:8080/OnlineWebProject/welcome.jsp'"> -->
		  <input type="text"  name="title" id="title" size="20">  <input type="submit"  value="SEARCH" class="l6" style="background-color:gray; align="right"  >
		<!-- Search by Title : <input type="text" name="title"><br><br> -->
		<!-- <input type="submit" value="Submit"><br><br> -->
		 <input type="hidden" name="ACTION" value="SEARCH">
	</form>
</body>
</html>