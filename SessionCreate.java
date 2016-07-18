package com.demo;

	import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Logger;

	import javax.servlet.http.*;

	@SuppressWarnings("serial")
	public class SessionCreate extends HttpServlet {
		
		public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

			HttpSession session = req.getSession();
			String uemail = req.getParameter("email");
			session.setAttribute("mailid",uemail);
	
			resp.sendRedirect("home.jsp");

		}
	}

