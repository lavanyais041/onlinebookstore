<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html><!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->

  <link  href="userlogin.css" rel="stylesheet" type="text/css">
<body>
 <img src="book1.jpg" style="width:100%;height:100%;position:absolute;top:0;left:0;z-index:-5000;">  
 <h2 align="center" class="b1">ONLINE BOOK STORE</h2>
	<hr/>
	<h2 align="center" class="b2"> USER    LOGIN</h2>
<div id="login">
	<!-- <h1><strong>Welcome.</strong> Please login.</h1>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/> -->
	<br/>
	<br/>
	<br/>
	<script type="text/javascript">
	function check() {
		if (document.Form1.usrName.value == "") {
		alert("Enter username");
		document.Form1.usrName.focus();
		return false;
		}
	</script>
	<form action="Login" method="post" name="Form1">	
	<fieldset>
	<%-- <% String msg=(String)request.getAttribute("MESSAGE"); 

		if(msg!=null)
		{%>
		 
		<%= msg %>
		
		<% }%>	
	
	 --%>
	
		 <p><strong class="b3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;USER NAME:</strong><input type="text" name="usrName" required="required"></p>
		<p><strong class="b3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PASSWORD:</strong><input type="password" name="usrPswd" required="required"></p>
			<p><input type="submit" value="LOGIN" class="b4" onClick="return check()"></p>
	<p><input type="hidden" name="ACTION" value="LOGINUSER"><p/> 
     <!--  <input type="hidden" name="ACTION" value="ORDERHISTORY"> -->
		
	</fieldset>
	<input type="button" value="HOME" class="b5" onclick="window.location='http://localhost:8080/OnlineWebProject/welcome.jsp'">
	</form>
	
	</div>
	  
</body>
</html>