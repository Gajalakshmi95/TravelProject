package com.demo;


import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.http.*;

@SuppressWarnings("serial")
public class SessionServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
	    session.invalidate();
		resp.sendRedirect("index.html");
	}
}