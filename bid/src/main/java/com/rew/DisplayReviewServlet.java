package com.rew;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.User;

@WebServlet("/DisplayReviewServlet")
public class DisplayReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
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
	
	    	List<Review>rewdetails = ReviewDBUtil.Display(uid);
	    	
	    	
	    		 request.setAttribute("rewdetails", rewdetails);  
	    		 RequestDispatcher dis = request.getRequestDispatcher("myReviews.jsp");
			 	 dis.forward(request, response);
	    	
	
	}
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	    	     List<Review>rewdetails = ReviewDBUtil.getReviews();
	    	
	    	
	    		 request.setAttribute("rewdetails", rewdetails);  
	    		 RequestDispatcher dis = request.getRequestDispatcher("allReviews.jsp");
			 	 dis.forward(request, response);
	    	
	
	}
	

}
