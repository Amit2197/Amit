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
		ResultSet rs=st.executeQuery("select * from FEEDBACK2");
%>
Final Display:
<table border="1">
<tr><th>Student Roll No</th><th>Date</th><th>Year</th><th>Department</th><th>Faculty Name</th><th>Academic Session</th><th>Teaching Methodology of the Faculty</th><th>How much helpful was the Faculty in clearing Doubts</th><th>Faculty-Student Interaction in Class</th><th>Overall rating of the College</th><th>Other Feedback</th></tr>
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
<td><%=rs.getString(9)%></td>
<td><%=rs.getString(10)%></td>
<td><%=rs.getString(11)%></td>
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
           				<td><a href="Ad_Re_Show.jsp"><b>Show Student Registration Page</b></a></td>
					</tr>

</body>
</html>