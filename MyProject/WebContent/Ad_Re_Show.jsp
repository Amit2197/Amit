<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
      <title>Registration Table </title>
   </head>
<body>
<%
	Connection conn=null;
	String url="jdbc:oracle:thin://@localhost:1521:XE";
	String driver="oracle.jdbc.driver.OracleDriver";
	Statement st;
	try{
		Class.forName(driver);
		conn=DriverManager.getConnection(url,"PROJECT","1234");
		st=conn.createStatement();
		ResultSet rs=st.executeQuery("select * from SIGN_UP");
%>
Final Display:
<table border="1">
<tr><th>Name</th><th>Father's Name</th><th>Date Of Birth</th><th>College Roll No</th><th>University Roll No</th><th>Department</th><th>Email</th><th>Mobile No</th></tr>
<%
   while(rs.next()){
	
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>
</tr>
<%
}
%>
<%
}
catch(Exception e){}
%>
</table>
<tr>
						
	<td><a href="Logout"><b>LOGOUT</b></a></td>
    <td><a href="Ad_Fe_Show.jsp"><b>Show Student Feedback Page</b></a></td>
</tr>

</body>
</html>