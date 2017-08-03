<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
    background:#7FFFD4;
}
.login {
  background: #eceeee;
  border: 2px solid #42464b;
  border-radius: 6px;
  height: 257px;
  margin: 120px auto 0;
  width: 298px;
}
input[type="text"] {
  border: 1px solid #a1a3a3;
  border-radius: 4px;
  color: #696969;
  height: 39px;
  margin: 31px 0 0 29px;
  padding-left: 37px;
  transition: box-shadow 0.3s;
  width: 240px;
}
input[type="text"]:focus {
  box-shadow: 0 0 4px 1px rgba(55, 166, 155, 0.3);
  outline: 0;
}
input[type="submit"] {
  height:35px;
  font-weight:bold;
  color:#fff;
  text-transform:uppercase;
  margin: 20px 0 0 29px;
  position:relative;
  border: none;  
  background-color: #37a69b;
  border-radius: 5px;
  box-shadow: inset 0px 1px 0px #2ab7ec, 0px 5px 0px 0px #497a78, 0px 10px 5px #999;
}
input[type="submit"]:active {
  top:3px;
  box-shadow: inset 0px 1px 0px #2ab7ec, 0px 2px 0px 0px #31524d, 0px 5px 3px #999;
}
.home{
border-top: 1px solid #a1a3a3;
border-right: 1px solid #a1a3a3;
  border-radius: 4px;
  color: #696969;
  height: 39px;
  margin: 31px 0 0 -29px;
  padding:5px;
  padding-left:65px;
  width: 120px;
  background-color:lightblue;
}
a:hover, a:visited, a:link, a:active
{
    text-decoration: none;
}
.register{
float:right;
border-top: 1px solid #a1a3a3;
border-left: 1px solid #a1a3a3;
  border-radius: 4px;
  color: #696969;
  height: 39px;
  margin: -40px 0 0 29px;
  padding:5px;
  padding-left: 8px;
  width: 120px;
  background-color:lightblue;
}
</style>
</head>
<body>

<div class="home">
	<a href="HomePage.jsp">HOME</a>
	</div>
	<div class="register">
	<a href="SignUp.jsp">Register Here</a>
</div>
<form action="L1" method="post">
<div class="login">
    <input type="text" name="n1" placeholder="Your Name">  
  <input type="text" name="r1" placeholder="Your Roll No.">  
  <input type="submit" value="Sign In">
</div>

</form>
</body>
</html>