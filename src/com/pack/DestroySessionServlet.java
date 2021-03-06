package com.pack;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DestroySessionServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session=req.getSession(false);
		if(session!=null) {
			session.invalidate();
		}
		req.setAttribute("ApplicationMessage", "User has been loggged outof the application");
		req.getRequestDispatcher("session1.jsp").forward(req, resp);
		
	}
}
