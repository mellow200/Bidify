package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try {
			
		int id = Integer.parseInt(request.getParameter("uid"));
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String province = request.getParameter("province");
		String country = request.getParameter("country");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		int fax = Integer.parseInt(request.getParameter("fax"));
		int tel = Integer.parseInt(request.getParameter("tel"));
		
		
		boolean isTrue;
		
		isTrue =UserDBUtil.updateUser(id, name, address, city, province, country, password, email, fax, tel);
	
		if(isTrue==true) {
			request.setAttribute("status", "success");
            request.setAttribute("message", "Update successful!");
        
          
		}
		else {
			request.setAttribute("status", "error");
            request.setAttribute("message", "Update failed.");	
   
			
		}
		
		   
	        
		}catch(NumberFormatException e) {
			request.setAttribute("status", "error");
            request.setAttribute("message", "Invalid number format for fax or telephone");
			
		}catch(Exception e) {
			request.setAttribute("status", "error");
            request.setAttribute("message", "An error occurred: " + e.getMessage());
		}
		
		int id = Integer.parseInt(request.getParameter("uid"));
		List<User> updatedUserDetails = UserDBUtil.getUserDetails(id);
        request.setAttribute("userdetails", updatedUserDetails);
        
		RequestDispatcher dis = request.getRequestDispatcher("userProfile.jsp");
        dis.forward(request, response);
        
		
	}

}
