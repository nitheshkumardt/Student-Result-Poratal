package com.Servlet;

import java.io.IOException;

import org.apache.log4j.Logger;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LogOut")
public class LogOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		final Logger log=Logger.getLogger(VerifyLogin.class);
		HttpSession session= request.getSession();
		log.info("\n"+session.getAttribute("uname")+" Successfully Logged Out\n");
		session.removeAttribute("uname");
		session.invalidate();
		log.info("Successfully Logged Out");
		response.sendRedirect("Login.jsp");
	}

}
