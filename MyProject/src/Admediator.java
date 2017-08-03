

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "m2", urlPatterns = { "/m2" })
public class Admediator extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		response.setContentType("text/html");
		HttpSession s=request.getSession();
		response.setHeader("Pragma","no-cache");
		response.setHeader("Cache-control","no-store");
		response.setHeader("Expires","0");
		response.setDateHeader("Expires",-1);
		String username=(String)s.getAttribute("username");
		if(username==null) {
			pw.println("<br><a href='Ad_Fe_Show.jsp'>Go To User Feedback Page</a>");
			pw.println("<br><a href='Ad_Re_Show.jsp'>Go To User Registration Page</a>");
			pw.println("<br><a href='Logout'>Logout</a>");
		}
		
	}

}
