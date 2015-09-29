<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
 <style type="text/css">
 .l1
{

font-size:30px;
font-style: italic;
color: blue;
text-align: center;
text-shadow: highlight;
}
</style>
 <link  href="register.css" rel="stylesheet" type="text/css">
<body>
 <img src="E:\\COURSE\\book1.jpg" style="width:100%;height:100%;position:absolute;top:0;left:0;z-index:-5000;">
 <h2 align="center" class="b1">ONLINE BOOK STORE</h2>
	<hr/>
<h2 align="center"> USER REGISTRATION</h2>
 <form action="Login" method="post" >
 <br/><br/>
  <label class="l1"> ENTER YOUR NAME:  </label>
  <input type="text" name="usrName" id="name" size="20"><br><br/>
 <label class="l1"> ENTER YOUR PASSWORD:</label>
 <input type="password" name="usrPswd"  id="password" size="20"><br><br/>
 <label class="l1">ENTER YOUR MAILID:  </label>
 <input type="text" name="usrMailid"  id="mailid"   size="20" ><br><br/>
 <label class="l1">ENTER YOUR ADDRESS:  </label>
 <input type="text" name="usrAddress"  id="usrAddress" size="20"><br><br/>
  <label class="l1">ENTER YOUR PHONE NUMBER:  </label>
 <input type="text" name="usrPnum"  id="usrPnum" size="20"><br><br/><br/><br/> 
 <input type="submit" value="REGISTER"/>
  <input type="button" value="HOME" onclick="window.location='http://localhost:8080/OnlineWebProject/welcome.jsp'">
 <input type="hidden" name="ACTION" value="REGISTER">
 </form>
 <br/><br/><br/>
</body>
</html>