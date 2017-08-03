

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "U2", urlPatterns = { "/U2" })
public class UpdateMediator2 extends HttpServlet {
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
	        pw.println("<h1>Invalid password</h1>");
	        pw.print("<a href='Update.html'>try again</a><br>");
	        pw.print("</html></body>");
		}
		else {
			
			
			pw.println("<b>Welcome  <b>"+name);
			pw.println("<br><a href='Update.jsp'>Go To Update Page</a>");
			pw.println("<br><a href='Logout'>Logout</a>");
			
		
		}
	}

}
