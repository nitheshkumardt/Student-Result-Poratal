package com.Servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import com.Bean.CheckingUser;
import com.DAO.CourseDetails;
import com.DAO.Result;
import com.DAO.StudentDetails;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/Login")
public class VerifyLogin extends HttpServlet {
	 public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
		 final Logger log=Logger.getLogger(VerifyLogin.class);
		String uname=request.getParameter("uname");
		String password=request.getParameter("password");
//		PrintWriter out=response.getWriter();
//		out.print("uname "+uname+"  "+"password "+password);
		CheckingUser check=new CheckingUser();
		try {
			if(check.check(uname, password)) {
				log.info("Successfully Logged In");
				StudentDetails.getStudentDetails(uname);
				Result.getResult(uname);
				CourseDetails.getCourseDetail(uname);
				HttpSession session=request.getSession();
				session.setMaxInactiveInterval(10);
				session.setAttribute("uname",uname);
				response.sendRedirect("Main.jsp");
			}
			else {
				log.info("Failure To Logged In");
				response.sendRedirect("Login.jsp");
			}
		} catch (SQLException | IOException e) {
			log.error("Error");
			response.sendRedirect("Error.jsp");
			//e.printStackTrace();
		}

	}

}
