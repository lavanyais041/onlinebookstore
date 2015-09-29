<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link  href="userlogin.css" rel="stylesheet" type="text/css">
</head>
<body>
 <img src="book1.jpg" style="width:100%;height:100%;position:absolute;top:0;left:0;z-index:-5000;">  
 <h2 align="center" class="b1">ONLINE BOOK STORE</h2>
	<hr/>
	<h2 align="center" class="b2"> USER    LOGIN</h2>
<div id="login">
<br/>
	<br/>
	<form action="Login" method="post">	
	<fieldset>
	
		 <p><strong class="b3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;USER NAME:</strong><input type="text" name="usrName"></p>
		<p><strong class="b3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PASSWORD:</strong><input type="password" name="usrPswd"></p>
			<p><input type="button" value="LOGIN" class="b4" style="background-color: highlight;color: black; width:290px;left: 160px;" onclick="window.location='http://localhost:8080/OnlineWebProject/welcome.jsp'" ></p>
	<!-- <p><input type="hidden" name="ACTION" value="LOGINUSER" ><p/> --> 
     <!--  <input type="hidden" name="ACTION" value="ORDERHISTORY"> -->
		
	</fieldset>
	<input type="button" value="HOME" class="b5" onclick="window.location='http://localhost:8080/OnlineWebProject/userlogin.jsp'">
	</form>
	
	</div>
</body>
</html>