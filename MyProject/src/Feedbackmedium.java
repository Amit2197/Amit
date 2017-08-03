

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "m3", urlPatterns = { "/m3" })
public class Feedbackmedium extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		response.setContentType("text/html");
		HttpSession s=request.getSession();
		response.setHeader("Pragma","no-cache");
		response.setHeader("Cache-control","no-store");
		response.setHeader("Expires","0");
		response.setDateHeader("Expires",-1);
		String name=(String)s.getAttribute("name");
		if(name==null) {
			pw.print("<html><body bgcolor=#d9dee2 size=16px font=Arial>");
	        pw.println("<h1>You Are Not Logged In</h1>");
	        pw.print("<a href='Student.jsp'>Go To Login First</a><br>");
	        pw.print("<a href='HomePage.jsp'>HOME</a>");
	        pw.print("</html></body>");
		}
		else {
			
			
			pw.println("<b>Welcome  <b>"+name);
			pw.println("<br><a href='Feedback.html'>Go To Feedback Page</a>");
			pw.println("<br><a href='Logout'>Logout</a>");
			
		
		}
	}

}
