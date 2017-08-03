

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "r1", urlPatterns = { "/r1" })
public class Ad_Reg_Show extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        out.println("<html><body>");
        try
        {
        	Class.forName("oracle.jdbc.driver.OracleDriver");
        	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521","PROJECT","1234");
        	Statement st=con.createStatement();
        	ResultSet rs=st.executeQuery("select * from SIGN_UP");
        	out.println("<table border=1 width=50% height=50%>");
        	out.println("<tr><th>NAME</th><th>FATHER'S NAME</th><th>DATE OF BIRTH</th><th>COLLEGE ROLL NO.</th><th>UNIVERSITY ROLL NO.</th><th>DEPARTMENT</th><th>EMAIL ID</th><th>MOBILE NO.</th><tr>");
        	while(rs.next())
        		{
        			String n1 = rs.getString("Name");
        			String f1 = rs.getString("Fname");
        			String d1 = rs.getString("Dob"); 
        			String c1 = rs.getString("Crno");
        			String u1 = rs.getString("Urno");
        			String d2 = rs.getString("Department");
        			String e1 = rs.getString("Email");
        			String m1 = rs.getString("Mobile");
        			out.println("<tr><td>" + n1 + "</td><td>" + f1 + "</td><td>" + d1 + "</td><td>" + c1 + "</td><td>" + u1 + "</td><td>" + d2 + "</td><td>" + e1 + "</td><td>" + m1 + "</td></tr>"); 
        		}
            	out.println("</table>");
            	out.println("</html></body>");
            	con.close();
        }
        catch(Exception e) 
        {
        	System.out.println(e.toString());
        }		
	}
}
