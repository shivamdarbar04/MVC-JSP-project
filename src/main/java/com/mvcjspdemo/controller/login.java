package com.mvcjspdemo.controller;
import com.mvcjspdemo.daoimpl.*;
import com.mvcjspdemo.pojo.*;
import com.mvcjspdemo.dao.*;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/checkuser")
public class login extends HttpServlet {

	protected void doPost(HttpServletRequest request, 
    HttpServletResponse response) 
		throws ServletException, IOException {
	
		String uname = request.getParameter("username");
		String upass = request.getParameter("password");
		
		User u = new User(uname, upass);
		
		UserDao daoImpl = new UserDaoImpl();
		
		if(daoImpl.checkUserCredentials(u)) {
			HttpSession session = request.getSession(true);
			session.setAttribute("USERNAME", uname);
			response.sendRedirect("home");
		}
		else
			response.sendRedirect(
					"views/login.jsp?msg=loginerror");
	}
}
