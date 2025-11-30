package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean isTrue=false;
		try {
			
		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String province = request.getParameter("province");
		String country = request.getParameter("country");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		int fax = Integer.parseInt(request.getParameter("fax"));
		int tel = Integer.parseInt(request.getParameter("tel"));
		
		
	     isTrue = UserDBUtil.insertUser(name, address, city, province, country, password,email, fax, tel);
        
	    
	    if(isTrue==true) {
	    	
	    
	    	//redirect
	    	request.setAttribute("status", "success");
            request.setAttribute("message", "Registration successful!");
	    	RequestDispatcher diss = request.getRequestDispatcher("loggin.jsp");
	    	diss.forward(request, response);
	    }
	    else {
	    	request.setAttribute("status", "error");
            request.setAttribute("message", "Registration failed. Please try again.");
	    	RequestDispatcher diss = request.getRequestDispatcher("register.jsp");
	    	diss.forward(request, response);
	    }
		}catch(NumberFormatException e) {
			request.setAttribute("status", "error");
            request.setAttribute("message", "Invalid number format for fax or telephone");
			
		}catch(Exception e) {
			request.setAttribute("status", "error");
            request.setAttribute("message", "An error occurred: " + e.getMessage());
		}
		RequestDispatcher dis = request.getRequestDispatcher("register.jsp");
        dis.forward(request, response);
		
	    
	}

}
