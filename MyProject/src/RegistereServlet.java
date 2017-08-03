

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "R1", urlPatterns = { "/R1" })
public class RegistereServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Name=request.getParameter("n1");
		String Fname=request.getParameter("f1");
		String Dob=request.getParameter("d1");
		String Crno=request.getParameter("c1");
		String Urno=request.getParameter("u1");
		String Department=request.getParameter("d2");
		String Email=request.getParameter("e1");
		String Mobile=request.getParameter("m1");
		PrintWriter out=response.getWriter();
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521","PROJECT","1234");
			PreparedStatement pst=c.prepareStatement("insert into SIGN_UP(Name,Fname,Dob,Crno,Urno,Department,Email,Mobile) values(?,?,?,?,?,?,?,?)");
			pst.setString(1,Name);
			pst.setString(2,Fname);
			pst.setString(3,Dob);
			pst.setString(4,Crno);
			pst.setString(5,Urno);
			pst.setString(6,Department);
			pst.setString(7,Email);
			pst.setString(8,Mobile);
			int i=pst.executeUpdate();
			if(i>0){
				   out.print("<html><body bgcolor=#d9dee2 size=16px font=Arial style='background-color:#d3d3d3;'>");
				   out.print("<LINK rel='StyleSheet' href='css/bootstrap.css' TYPE='text/css'>"); 
				   out.print("<h1>Registration is successful<h1>");
				   out.print("<a href='Student.jsp'> <b>Go to Login</b></a>"); 
				   out.print("</html></body>"); 
			}
			c.close();
		}
		catch(Exception e){
			System.out.println(e.toString());
		}
	}

}
