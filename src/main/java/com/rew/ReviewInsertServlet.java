package com.rew;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.User;

@WebServlet("/ReviewInsertServlet")
public class ReviewInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean isTrue = false;
		try {
		HttpSession session = request.getSession();
		// Get the user object from session 
        User loggedUser = (User) session.getAttribute("user");
        
        if (loggedUser == null) {
            // User is not logged in
            response.sendRedirect("loggin.jsp");
            return;
        }
        
        // Get the user ID from the user object
        int uid = loggedUser.getUID();
		String text = request.getParameter("reviewText");
		int rating = Integer.parseInt(request.getParameter("rating"));
			
		isTrue = ReviewDBUtil.insertReview(uid, rating, text);
		if(isTrue==true) {
	 	//redirect
			// Choose ONE method - either JavaScript redirect OR servlet redirect
            // Option 1: JavaScript alert and redirect
			request.setAttribute("status", "success");
            request.setAttribute("message", " success.");
	    	RequestDispatcher diss = request.getRequestDispatcher("EnterReview.jsp");
	    	diss.forward(request, response);
	    }
	    else {
	    	request.setAttribute("status", "error");
            request.setAttribute("message", " failed. Please try again.");
	    	RequestDispatcher diss = request.getRequestDispatcher("EnterReview.jsp");
	    	diss.forward(request, response);
	    }
		}catch(Exception e) {
			request.setAttribute("status", "error");
            request.setAttribute("message", "An error occurred: " + e.getMessage());
		}
		RequestDispatcher dis = request.getRequestDispatcher("EnterReview.jsp");
        dis.forward(request, response);
		
	    
	}
	

}
