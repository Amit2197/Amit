

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "F2", urlPatterns = { "/F2" })
public class FeedbackServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String CRNO=request.getParameter("rn");
		String FEEDBACK_DATE=request.getParameter("d1");
		String YEAR=request.getParameter("y1");
		String DEPARTMENT=request.getParameter("d2");
		String FACULTY_NAME=request.getParameter("f1");
		String ACADEMIC=request.getParameter("a1");
		String TMOF=request.getParameter("r1");
		String HMHFCD=request.getParameter("r2");
		String FSIC=request.getParameter("r3");
		String ORC=request.getParameter("r4");
		String OTHER=request.getParameter("o1");
		PrintWriter out=response.getWriter();
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521","PROJECT","1234");
			PreparedStatement pst=c.prepareStatement("insert into FEEDBACK2(CRNO,FEEDBACK_DATE,YEAR,DEPARTMENT,FACULTY_NAME,ACADEMIC,TMOF,HMHFCD,FSIC,ORC,OTHER) values(?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1,CRNO);
			pst.setString(2,FEEDBACK_DATE);
			pst.setString(3,YEAR);
			pst.setString(4,DEPARTMENT);
			pst.setString(5,FACULTY_NAME);
			pst.setString(6,ACADEMIC);
			pst.setString(7,TMOF);
			pst.setString(8,HMHFCD);
			pst.setString(9,FSIC);
			pst.setString(10,ORC);
			pst.setString(11,OTHER);
			int i=pst.executeUpdate();
			if(i>0){
				   out.print("<html><body bgcolor=#d9dee2 size=16px font=Arial style='background-color:#d3d3d3;'>");
				   out.print("<LINK rel='StyleSheet' href='css/bootstrap.css' TYPE='text/css'>"); 
				   out.print("<h1>Thank You For Feedback<h1>");
				   out.print("<a href='Logout'> <b>Logout</b></a>"); 
				   out.print("</html></body>"); 
			}
			c.close();
		}
		catch(Exception e){
			System.out.println(e.toString());
		}
	}

}
