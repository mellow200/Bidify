package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("uid"));
		
		boolean isTrue;
		
		isTrue = UserDBUtil.deleteUser(id);
		
		if(isTrue == true) {
			request.setAttribute("status", "success");
	        request.setAttribute("message", "Sucessfuly deleted");
	        HttpSession session = request.getSession(false);
	        if (session != null) {
	            session.invalidate();
	        }
			RequestDispatcher dis = request.getRequestDispatcher("register.jsp");
			dis.forward(request, response);
			
		}
		else {
			request.setAttribute("status", "error");
	        request.setAttribute("message", "Delete acc failed");
			List<User> updatedUserDetails = UserDBUtil.getUserDetails(id);
            request.setAttribute("userdetails", updatedUserDetails);
            RequestDispatcher dis = request.getRequestDispatcher("userProfile.jsp");
			dis.forward(request, response);
            
		}
	}

}
