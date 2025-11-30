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


@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email =  request.getParameter("email");
		String password = request.getParameter("pass");
		
		try {
		List<User> userdetails = UserDBUtil.validate(email, password);
		    
		     if(userdetails != null && !userdetails.isEmpty()) {
		    	//Set session attribute for logged in user
		    	HttpSession session = request.getSession();
		 	    session.setAttribute("user", userdetails.get(0));    
		 	    //set request attribute for profile display
		 	     request.setAttribute("status", "success");
		 	     request.setAttribute("message", "login successful!!");
		 	     request.setAttribute("userdetails", userdetails);
		 	    //method to redirect to profile
		 	    RequestDispatcher dis = request.getRequestDispatcher("userProfile.jsp");
		 		dis.forward(request, response);
		     }
		     else {
		    	// Failed login
		    	    request.setAttribute("status", "error");
		            request.setAttribute("message", "Invalid email or password");
		            RequestDispatcher dis = request.getRequestDispatcher("loggin.jsp");
		            dis.forward(request, response);
		     }
		
		}
		catch(Exception e){
			e.printStackTrace();
			request.setAttribute("status", "errsor");
			request.setAttribute("error", "Login error occurred");
	        request.getRequestDispatcher("loggin.jsp").forward(request, response);
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			HttpSession session = request.getSession();
			// Get the user object from session (set in your login servlet)
	        User loggedUser = (User) session.getAttribute("user");
	        
	        if (loggedUser == null) {
	            // User is not logged in
	            response.sendRedirect("loggin.jsp");
	            return;
	        }
	        
	        // Get the user ID from the user object
	        int uid = loggedUser.getUID();
	        List<User> userdetails = UserDBUtil.getUserDetails(uid);
		    
		     if(userdetails != null && !userdetails.isEmpty()) {
		    	
		 	    
		 	     request.setAttribute("userdetails", userdetails);
		 	    //method to redirect to profile
		 	    RequestDispatcher dis = request.getRequestDispatcher("userProfile.jsp");
		 		dis.forward(request, response);
		     }
		
	         
	}

}
