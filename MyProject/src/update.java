

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "U1", urlPatterns = { "/U1" })
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String n=request.getParameter("n1");
		String c=request.getParameter("c1");
		HttpSession s=request.getSession();
		PrintWriter out=response.getWriter();
		s.setAttribute("name",n);
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","PROJECT","1234");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select NAME,CRNO from SIGN_UP where NAME='"+n+"'and CRNO='"+c+"'");
			
		if(rs.next())
		{
			response.sendRedirect("U2");
		}
		else
		{
			out.print("<html><body bgcolor=#d9dee2 size=16px font=Arial>");
	        out.println("<h1 colorwhite>Invalid password</h1>");
	        out.print("<a href='update.html'>try again</a><br>");
	        out.print("</html></body>");
			
		}
		} catch(Exception e) {System.out.println(e);}

	}

}
