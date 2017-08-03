<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<title>SignUp</title>
<style type="text/css">
body {
    background:#00ffff;
}
a:hover, a:visited, a:link, a:active
{
    text-decoration: none;
}
.home{
  border-top: 2px solid #a1a3a3;
  border-right: 2px solid #a1a3a3;
  border-radius: 12px;
  border-color:fetchia;
  color: #696969;
  height: 39px;
  margin: 31px 0 0 -29px;
  padding:5px;
  padding-left: 65px;
  width: 120px;
  background-color:lightblue;
}
.login {
  background: #eceeee;
  border: 1px solid #42464b;
  border-radius: 6px;
  height: 700px;
  margin: 12px auto 12px;
  width: 600px;
}
label{
  white-space: nowrap;
  nowrap:20px;
  height: 39px;
  margin: 31px 0 0 29px;
  padding-left: 15px;
  width: 100px;
}
input[type="text"],input[type="number"],input[type="email"],input[type="date"]{
  border: 1px solid #a1a3a3;
  border-radius: 6px;
  color: #696969;
  height: 39px;
  margin: 31px 0 0 55px;
  padding-left: 37px;
  transition: box-shadow 0.3s;
  width: 240px;
}
input[type="text"]:focus,input[type="number"]:focus,input[type="email"]:focus,input[type="date"]:focus, select:focus{
  box-shadow: 0 0 4px 1px rgba(55, 166, 155, 0.3);
  outline:0; 
  }
select{
  border: 1px solid #a1a3a3;
  border-radius: 6px;
  color: #696969;
  height: 39px;
  margin: 31px 0 0 55px;
  padding-left: 37px;
  transition: box-shadow 0.3s;
  width: 240px;
}
input[type="submit"]{
  height:35px;
  font-weight:bold;
  color:#fff;
  text-transform:uppercase;
  margin: 20px 0 0 185px;
  position:relative;
  border: none;  
  background-color: #37a69b;
  border-radius: 6px;
  box-shadow: inset 0px 1px 0px #2ab7ec, 0px 5px 0px 0px #497a78, 0px 10px 5px #999;
}
input[type="reset"] {
  float:right;
  right:170px;
  height:35px;
  font-weight:bold;
  color:#fff;
  text-transform:uppercase;
  margin: 20px 0 0 29px;
  position:relative;
  border: none;  
  background-color: red;
  border-radius: 6px;
  box-shadow: inset 0px 1px 0px #2ab7ec, 0px 5px 0px 0px #497a78, 0px 10px 5px #999;
}
input[type="submit"]:active , input[type="reset"]:active{
  top:3px;
  box-shadow: inset 0px 1px 0px #2ab7ec, 0px 2px 0px 0px #31524d, 0px 5px 3px #999;
}
.registered{
margin:7px 0 0 29px
}

 </style>
</head>
<body>
<form action="R1" method="post">
<div class="home">
<a href="HomePage.jsp">HOME</a>
</div>

<div class="login">
<label>Name              :</label><input type="text" name="n1"><br>
<label>Father's Name     :</label><input type="text" name ="f1" ><br>
<label>Date Of Birth     :</label><input type="date" name="d1" onchange="mydate1();" placeholder="DD/MM/YY"><br>
<label>College Roll No   :</label><input type="number" name="c1"><br>
<label>University Roll No:</label><input type="number" name="u1"><br>
<label>Department        :</label><select name="d2">
							<option>CSE</option>
							<option>IT</option>
							<option>ME</option>
							<option>ECE</option>
							<option>EE</option>
							<option>AEI</option>
							<option>CIVIL</option>
							<option>BBA</option>
							<option>BCA</option>
						</select><br>
<label>Email           :</label><input type="email" name ="e1"><br>
<label>Mobile No       :</label><input type="number" name="m1"><br>
<input type="submit" value="Sign Up">
<input type="reset" value="reset"><br>
<div class="registered">Already registered!! <a href="Student.jsp">Login</a></div>
           
        </div>
</form>

</body>
</html>