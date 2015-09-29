<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">
.l3
{
font-size:50px;
font-style: italic;
color: navy;

}

.l1
{
font-size:30px;
font-style: italic;
color: navy;
position: absolute;
top: 150px;
left: 400px;
}
.l2
{
font-style: normal;
font-size:20px;
position:absolute;
top: 250px;
left: 200px;
width: 35%;
color: inherit;
}

.l4
{
position:absolute;
font-style: normal;
font-size:20px;
top: 250px;
left: 10px;
width: 35%;
color: inherit;
}
 </style>  <style type="=text/css" ></style>
<body>
<img src="E:\\COURSE\\book1.jpg" style="width:100%;height:100%;position:absolute;top:0;left:0;z-index:-5000;">
 <h2 align="center" class="l3"> USER LOGIN</h2>
 
 <form action="Login" method="post" class="l1">
 <br/><br/>
  <label> USER NAME:</label>
 <input type="text" name="usrName" id="name" size="20"><br><br/>
 <label> PASSWORD:</label>
 <input type="password" name="usrPswd"  id="password" size="20"><br><br/>
  <input type="submit" value="LOGIN" class="l4" style="background-color:gray; width="50" /> 
  <input type="button" value="HOME" class="l2" style="background-color:gray;   align="right" onclick="window.location='http://localhost:8080/OnlineWebProject/welcome.jsp'">
 <input type="hidden" name="ACTION" value="ORDERHISTORY">
 </form>
 <br/><br/><br/>
</body>
</html>