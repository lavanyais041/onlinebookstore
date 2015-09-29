<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
/* body {
 background:  url(Book-And-Tea-Cup.jpg);
   background-size: 100% ;
background-color: #f4f4f4;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 16px;
line-height: 1.5em;
} */
a { text-decoration: none; }
h1 { font-size: 1em; }
h1, p {
margin-bottom: 10px;
}
strong {
font-weight: bold;
}
.uppercase { text-transform: uppercase; }

/* ---------- LOGIN ---------- */
#login {
margin: 50px auto;
width: 300px;
}
form fieldset input[type="text"], input[type="password"] {
background-color: #e5e5e5;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 14px;
height: 50px;
outline: none;
padding: 0px 10px;
width: 268px;
-webkit-appearance:none;
}
form fieldset input[type="submit"] {
background-color: #008dde;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #f4f4f4;
cursor: pointer;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
height: 50px;
text-transform: uppercase;
width: 288px;
-webkit-appearance:none;
}
form fieldset a {
color: #5a5656;
font-size: 10px;
}
form fieldset a:hover { text-decoration: underline; }
.btn-round {
background-color: #5a5656;
border-radius: 50%;
-moz-border-radius: 50%;
-webkit-border-radius: 50%;
color: #f4f4f4;
display: block;
font-size: 12px;
height: 50px;
line-height: 50px;
margin: 30px 125px;
text-align: center;
text-transform: uppercase;
width: 50px;
}
.facebook-before {
background-color: #0064ab;
border-radius: 3px 0px 0px 3px;
-moz-border-radius: 3px 0px 0px 3px;
-webkit-border-radius: 3px 0px 0px 3px
color: #f4f4f4;
display: block;
float: left;
height: 50px;
line-height: 50px;
text-align: center;
width: 50px;
}


</style>
<script type="text/javascript">


function checkForm(form)
{
  if(form.username.value == "") 
  {
    alert("Error: Username cannot be blank!");
    form.username.focus();
    return false;
  }
  re = /^\w+$/;
  if(!re.test(username.value)) 
  {
    alert("Error: Username must contain only letters");
    form.username.focus();
    return false;
  }

  if(form.password.value != "" && form.password.value == form.password.value) {
    if(form.password.value.length < 6) {
      alert("Error: Password must contain at least six characters!");
      form.password.focus();
      return false;
    }
    if(form.email.value == "") {
        alert("Error: Username cannot be blank!");
        form.email.focus();
        return false;
      }
    if(form.email.value == "") {
        alert("Error: Username cannot be blank!");
        form.email.focus();
        return false;
      }
    if(form.phNo.value != "" && form.phNo.value == form.phNo.value) {
        if(form.phNo.value.length < 10) {
          alert("Error: phno must contain  10 no ");
          form.password.focus();
          return false;
        }}
    if(form.password.value == form.username.value) {
      alert("Error: Password must be different from Username!");
      form.pwd1.focus();
      return false;
    }
    re = /[0-9]/;
    if(!re.test(form.password.value)) {
      alert("Error: password must contain at least one number (0-9)!");
      form.password.focus();
      return false;
    }
    re = /[a-z]/;
    if(!re.test(form.password.value)) {
      alert("Error: password must contain at least one lowercase letter (a-z)!");
      form.password.focus();
      return false;
    }
    re = /[A-Z]/;
    if(!re.test(form.password.value)) {
      alert("Error: password must contain at least one uppercase letter (A-Z)!");
      form.password.focus();
      return false;
    }
  } else {
    alert("Error: Please check that you've entered and confirmed your password!");
    form.password.focus();
    return false;
  }

  alert("You entered a valid password: " + form.password.value);
  return true;
}



</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link  href="userlogin.css" rel="stylesheet" type="text/css">
<body>
 <img src="css10.jpg" style="width:100%;height:250%;position:absolute;top:0;left:0;z-index:-5000;">  
 <h2 align="center" style="font-style: italic;color: navy;font-size: 40px;">ONLINE BOOK STORE</h2>
	<hr/>
	<h2 align="center" style="position: absolute;top: 80px;left:555px;font-family: fantasy;color: black; font-size: 35px;"> USER    REGISTER</h2>
<div id="login">
	<!-- <h1><strong>Welcome.</strong> Please Register.</h1> -->
		<form action="Login" method="post"  name="form">
		<fieldset>
		<% String msg=(String)request.getAttribute("MESSAGE"); 

		if(msg!=null)
		{%>
		 
		<%= msg %>
		
		<% }%>	
	
	
		<p ><strong class="b3" style="color: navy;">Username:<input type="text" name="username" ></strong></p>
		<p><strong class="b3" style="color: navy;">Password:<input type="password" name="password" ></strong></p>
		<p><strong class="b3" style="color: navy;">Email:<input type="text" name="email"></strong></p>
		<p><strong class="b3" style="color: navy;">Door No.:<input type="text" name="doornum"></strong></p>
		<p><strong class="b3" style="color: navy;">Street/Ward/Village:<input type="text" name="street"></strong></p>
		<p><strong class="b3" style="color: navy;">City :
		<select type="text" name="city" >
		<option>Select</option>
		  <option value="Tumkur">Tumkur</option>
		  <option value="Banglore">Banglore</option>
		  <option value="Mysore">Mysore</option>
		  <option value="Delhi">Delhi</option>
			</select>
          State : <select type="text" name="state" >
		  <option>Select</option>
		  <option value="Karnataka">Karnataka</option>
		  <option value="Tamilnadu">Tamilnadu</option>
		  <option value="Andrapradesh">Andrapradesh</option>
		  <option value="Nepal">Nepal</option>
		  </select></strong></p>
		  <p><strong class="b3" style="color: navy;">Pin-Code<input type="text" name="pincode"></strong></p>
		<p><strong class="b3" style="color: navy;">Phone No:<input type="text" name="phNo" ></strong></p>
		
		
		<p><input type="Submit" value="REGISTER"  onfocus="checkForm(form)" /></p>
		
	</fieldset>
	<input type="hidden" name="ACTION" value="REGISTER">
	</form>
	<input type="button" value="HOME" class="b5" onclick="window.location='http://localhost:8080/OnlineWebProject/welcome.jsp'">
	</div>
</body> 
</html>