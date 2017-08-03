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
    background:url("images/book.jpg");
}
.login {
  background: rgba(192, 192, 192, 0.6);
  border: 1px solid #42464b;
  border-radius: 6px;
  height: 990px;
  margin: 12px auto 12px;
  width: 950px;
}
a:hover, a:visited, a:link, a:active
{
    text-decoration: none;
}
input[type="radio"]{
font-weight:bold;
		border: 1px solid #a1a3a3;
  	 	border-radius: 1px;
  		color: blue;
  		height: 12px;
  		margin: 31px 0 0 29px;
  		transition: box-shadow 0.3s;
  		width: 12px;
}
label{
font-weight:bold;
  white-space: nowrap;
  nowrap:20px;
  height: 39px;
  margin: 31px 0 0 29px;
  padding-left: 15px;
  width: 400px;
}
input[type="text"]{
  border: 1px solid #a1a3a3;
  border-radius: 6px;
  color: #696969;
  height: 39px;
  margin: 31px 0 0 29px;
  padding-left: 15px;
  transition: box-shadow 0.3s;
  width: 240px;
}
textarea{
  border: 1px solid #a1a3a3;
  border-radius: 6px;
  color: #696969;
  height: 90px;
  margin: 31px 0 -60px 29px;
  padding-left: 15px;
  transition: box-shadow 0.3s;
  width: 240px;
}
input[type="text"]:focus, textarea:focus{
  box-shadow: 0 0 4px 1px rgba(55, 166, 155, 0.3);
  outline:0; 
  }
select{
  border: 1px solid #a1a3a3;
  border-radius: 6px;
  color: #696969;
  height: 39px;
  margin: 31px 0 0 29px;
  padding-left: 15px;
  transition: box-shadow 0.3s;
  width: 240px;
}
input[type="submit"]{
  height:35px;
  font-weight:bold;
  color:#fff;
  text-transform:uppercase;
  margin: 65px 0 0 205px;
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
  margin: 65px 135px 0 0;
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
h4{
text-align:center;
color:white;
text-transform: uppercase;
text-shadow: 3px 2px lightblue;
}
</style>
</head>
<body>
<form  name="" action="" method="post">
<div class="login">
<h4 style="font-size:30px; font-family:Elephant; color:red">Student  Feedback Form</h4>
<label>Student's Roll No:</label><input type="text"  name="rn"><br>
<label>Date:</label><input type="text" name="d1"><br>
<label>YEAR:</label><select name="y1">
    		<option value="1st Year">1st Year</option>
    		<option value="2nd Year">2nd Year</option>
    		<option value="3rd Year">3rd Year</option>
    		<option value="4th Year">4th Year</option>
    		</select><br>
<label>Department:</label><select name="d2" id="select1">
			<option value=" "></option>
  			<option value="1">CSE</option>
  			<option value="2">IT</option>
  			<option value="3">CE</option>
  			<option value="4">ME</option>
  			<option value="5">ECE</option>
  			<option value="6">EE</option>
  			<option value="7">AEIE</option>
			</select><br>
<label>Faculty Name:</label><select name="d3" id="select2">
			<option value=" "></option>
  			<option value="1">Dr. Sanjay Biswas</option>
  			<option value="1">Dr. Dipendra Nath Ghosh</option>
  			<option value="1">Dr. Chandan Konar</option>
  			<option value="1">Dr. Raj Kumar Samanta</option>
  			<option value="1">Dr. Subir Halder</option>
  			<option value="1">Dr. Sujit Das</option>
  			<option value="1">Dr. Amrita Ghosal</option>
  			<option value="1">Bappaditya Das</option>
  			<option value="1">Santanu Monda</option>
  			<option value="1">Hiranmay Samaddar</option>
  			<option value="1">Suvobrata Sarkar</option>
  			<option value="1">Saindhab Chattaraj</option>
  			<option value="1">Amitabha Mandal</option>
  			<option value="1">Sabbir Reza Tarafdar</option>
  			<option value="1">Munmun Kesh</option>
  			<option value="1">Kalpana Roy</option>
  			<option value="1">Biswajit Mondal</option>
  			<option value="1">Soumitra Roy</option>
  			<option value="1">Jiban Dalal</option>
  			<option value="1">Biswadeb Goswami</option>
  			<option value="1">Sanjib Saha</option>
  			<option value="1">Sayed Zahir Hasan</option>
  			<option value="1">Anandaprova Majumder</option>
  			<option value="1">Arindam Ghosh</option>
  			<option value="1">Ruma Ghosh</option>
  			<option value="1">Poulomi Tewari</option>
  			<option value="1">Biswajit Saha</option>
  			<option value="1">Babul Prasad Tiwari</option>
  			<option value="1">Gour Sundar Mitra Thakur</option>
  			<option value="1">Arun Kumar Sadhu</option>
  			<option value="1">Rajib Kumar Mondal</option>
  			<option value="1">Shaon Bandyopadhyay</option>
  			<option value="2">Dr. Arunava De</option>
  			<option value="2">Dr. Debaprasad Mukherjee</option>
  			<option value="2">Saikat Maity</option>
  			<option value="2">Dinesh Kumar Pradhan</option>
  			<option value="2">Prabal Kumar Sahu</option>
  			<option value="2">Avijit Bhowmick</option>
  			<option value="2">Moumita Sasmal</option>
  			<option value="2">Prasanta Majumder</option>
  			<option value="2">Md Keramot Hossain Monda</option>
  			<option value="2">Manas Kumar Roy</option>
  			<option value="2">Paramita Manna</option>
  			<option value="2">Priyanka Roy</option>
  			<option value="3">Dr. Sabyasachi Chandra</option>
  			<option value="3">Subhransu Goswami</option>
  			<option value="3">Prabir Kumar Mukhopadhyay</option>
  			<option value="3">Chhanda Mondal</option>
  			<option value="3">Ashis Som </option>
  			<option value="3">Koushik Mondal </option>
  			<option value="3">Prakash Mondal</option>
  			<option value="3">Sanjay Sengupta</option>
  			<option value="3">Arijit Kumar Banerjee</option>
  			<option value="3">Md. Hamjala Alam</option>
  			<option value="3">Shovan Roy A</option>
  			<option value="3">Chanchal Das</option>
  			<option value="3">Somnath Das </option>
  			<option value="3">Ankita Som</option>
  			<option value="3">Md. Asif Sk.</option>
  			<option value="3">Malay Kumar Rajak</option>
  			<option value="3">Amit Kotal</option>
  			<option value="3">Anindita Pan </option>
  			<option value="3">Prithwish Roy</option>
  			<option value="3">Anupam Kumar Biswas</option>
  			<option value="3">Pranoy Roy</option>
  			<option value="3">Sayantan Dutta</option>
  			<option value="3">Arindam Das </option>
  			<option value="3">Samrat Ray</option>
  			<option value="3">Sudipta Bandyopadhyay</option>
  			<option value="4">Dr. Chandan Chattoraj</option>
  			<option value="4">Dr. Kanchan Chatterjee</option>
  			<option value="4">Dr. Swapan Kumar Majumder</option>
  			<option value="4">Kartik Chandra Ghosh</option>
  			<option value="4">Amitava Sengupta</option>
  			<option value="4">Dr. Subrata Samanta</option>
  			<option value="4">Dr. Arijit Banerjee</option>
  			<option value="4">Dr. Sasanka Sekhar Ghosh</option>
  			<option value="4">Dr. Snehaunshu Chowdhury</option>
  			<option value="4">Shyama Charan Chakrabarty</option>
  			<option value="4">Dilip Kumar Adhwarjee</option>
  			<option value="4">Manoj Kundu</option>
  			<option value="4">Shivabrata Mojumdar</option>
  			<option value="4">Ranjit Kumar Roy</option>
  			<option value="4">Pabitra Kumar Mandal</option>
  			<option value="4">Ashok Kumar Bandopadhyay</option>
  			<option value="4">Partha Sarathi Bose</option>
  			<option value="4">Rupali</option>
  			<option value="4">Suman Karmakar</option>
  			<option value="4">Subhajit Bhattacharya</option>
  			<option value="4">Chitta Sahana</option>
  			<option value="4">Subhas Chandra Moi</option>
  			<option value="4">Arnab Chowdhury</option>
  			<option value="4">Siddhartha Bhowmick</option>
  			<option value="4">Arka Banerjee</option>
  			<option value="4">Uday Shankar Chaudhary</option>
  			<option value="4">Rajib Ranjan </option>
  			<option value="4">Pradip Kumar Mukhopadhyay</option>
  			<option value="4">Arup Ratan Dey</option>
  			<option value="5">Dr. Sarit Pal</option>
  			<option value="5">Dr. Chandan Kumar Ghosh</option>
  			<option value="5">Dr. Narendranath Pathak</option>
  			<option value="5">Tapas Mondal </option>
  			<option value="5">Dr. Aloke Saha</option>
  			<option value="5">Dr. Santanu Patra</option>
  			<option value="5">Dr. Tribeni Prasad Banerjee</option>
  			<option value="5">Indranil Sengupta</option>
  			<option value="5">Keka Hajra</option>
  			<option value="5">Rajdeep Ray</option>
  			<option value="5">Ramkrishna Rakshit</option>
  			<option value="5">Tapas Roy</option>
  			<option value="5">Anirban Bose </option>
  			<option value="5">Kamalika Tiwari</option>
  			<option value="5">Dipta Chaudhuri</option>
  			<option value="5">Aparna Kundu</option>
  			<option value="5">Aritra Bhowmik</option>
  			<option value="5">Rajib Banerjee</option>
  			<option value="5">Anirban Chattopadhyay</option>
  			<option value="5">Koustav Roy </option>
  			<option value="5">Kamal Goswami</option>
  			<option value="5">Abhijit Banerjee</option>
  			<option value="5">Mrinmoy Chakraborty</option>
  			<option value="5">Sourav Moitra</option>
  			<option value="5">Debipriya Dutta</option>
  			<option value="5">Moutusi Mondal (Roy)</option>
  			<option value="5">Nilkamal Bhunia</option>
  			<option value="5">Ankita Mitra</option>
  			<option value="5">Aditi Chatterjee</option>
  			<option value="5">Pradipta Sarkar</option>
  			<option value="5">Ardhendu Sekhar Chattopadhyay</option>
  			<option value="6">Dr. Sumit Banerjee</option>
  			<option value="6">Dr. Susanta Dutta</option>
  			<option value="6">Dr. Dola Sinha</option>
  			<option value="6">Mrinal Kanti Tapadar</option>
  			<option value="6">Pijush Kanti Ghosh</option>
  			<option value="6">Mou Das Mahapatra</option>
  			<option value="6">Anupam Sinha</option>
  			<option value="6">Sanjoy Kumar Saha</option>
  			<option value="6">Basudeb Mondal</option>
  			<option value="6">Ranadhir Sarkar</option>
  			<option value="6">Tapan Kumar Chattopadhyay</option>
  			<option value="6">Tushnik Sarkar A</option>
  			<option value="6">Tushar Ranjan Bhattacharya</option>
  			<option value="6">Dipak Kumar Dhak</option>
  			<option value="6">Sidhartha Ghosh</option>
  			<option value="6">Sourav Paul</option>
 		 	<option value="6">Chandan Paul</option>
  			<option value="6">Kingshuk Majumdar</option>
  			<option value="6">Sneha Sultana </option>
  			<option value="6">Sunil Kumar Choudhary</option>
  			<option value="6">Dipayan Guha</option>
  			<option value="6">Soumen Biswas</option>
  			<option value="6">Saroj Kumar Ghosh</option>
  			<option value="6">Sudip Mondal</option>
  			<option value="">Snehasish Ghosal</option>
  			<option value="6">Chaity Sarkar</option>
  			<option value="6">Subrata Mandal</option>
  			<option value="6">Soham Dey </option>
  			<option value="6">Arnab Ghosh </option>
  			<option value="6">Utpal Nath</option>
  			<option value="7">Dr. Khondekar Mofazzal Hossain</option>
  			<option value="7">Sujit Kumar Chatterjee</option>
  			<option value="7">Dr. Chanchal Kumar De</option>
  			<option value="7">Dr. Bijoy Laxmi Koley (Midya)</option>
  			<option value="7">Dr. Debasis De</option>
  			<option value="7">Samujjwal Ray</option>
  			<option value="7">Suman Dasgupta</option>
  			<option value="7">Ritu Rani De (Maity)</option>
  			<option value="7">Dr. Arindam Chakraborty</option>
  			<option value="7">Santigopal Pain</option>
  			<option value="7">Chandan Das</option>
  			<option value="7">Soumen Mallick</option>
  			<option value="7">Shibendu Mahata</option>
  			<option value="7">Sumana Roy</option>
</select><br>
<script src="js/jquery.js"></script>
<script>
$("#select1").change(function() {
	  if ($(this).data('options') === undefined) {
	    /*Taking an array of all options-2 and kind of embedding it on the select1*/
	    $(this).data('options', $('#select2 option').clone());
	  }
	  var id = $(this).val();
	  var options = $(this).data('options').filter('[value=' + id + ']');
	  $('#select2').html(options);
	});
</script>
<label>Academic Session:</label><input type="text" name="a1"><br>

   <label>Teaching Methodology of the Faculty:</label>
   <input type="radio" name="r1" value="Poor" ><b>Poor</b> 
   <input type="radio" name="r1" value="Average" ><b>Average</b>
   <input type="radio" name="r1" value="Good" ><b>Good</b>
   <input type="radio" name="r1" value="Very Good" ><b>Very Good</b> 
   <input type="radio" name="r1" value="Excellent" ><b>Excellent</b><br>
 
   <label>How much helpful was the Faculty in clearing Doubts:</label>
   <input type="radio" name="r2" value="Poor"><b>Poor </b>
   <input type="radio" name="r2" value="Average"><b>Average</b>
   <input type="radio" name="r2" value="Good"><b>Good</b>
   <input type="radio" name="r2" value="Very Good" ><b>Very Good </b>
   <input type="radio" name="r2" value="Excellent" ><b>Excellent</b><br>

  <label>Faculty-Student Interaction in Class:</label>
   <input type="radio" name="r3" value="Poor" ><b>Poor </b>
   <input type="radio" name="r3" value="Average" ><b>Average</b>
   <input type="radio" name="r3" value="Good" ><b>Good</b>
   <input type="radio" name="r3" value="Very Good" ><b>Very Good</b>
   <input type="radio" name="r3" value="Excellent" ><b>Excellent</b><br>
 
   <label>Overall rating of the College:</label>
   <input type="radio" name="r4" value="Poor"><b>Poor</b>
   <input type="radio" name="r4" value="Average"><b>Average</b>
   <input type="radio" name="r4" value="Good"><b>Good</b>
   <input type="radio" name="r4" value="Very Good"><b>Very Good</b>
   <input type="radio" name="r4" value="Excellent"><b>Excellent</b><br>
  <label>Other Feedback:</label><textarea name="t1"></textarea><br>
   <input type="submit" value="Submit">
   <input type="reset" value="Reset">
   </div>
  </form>
</body>
</html>