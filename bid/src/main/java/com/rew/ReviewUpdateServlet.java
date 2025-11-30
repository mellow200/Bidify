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
import com.user.UserDBUtil;

@WebServlet("/ReviewUpdateServlet")
public class ReviewUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		int rid = Integer.parseInt(request.getParameter("rid"));
		int rating = Integer.parseInt(request.getParameter("rating"));
		String reviewText = request.getParameter("reviewText");
		
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
		
		boolean isTrue;
		
		isTrue = ReviewDBUtil.updateReview(rid, rating, reviewText);
		
		if(isTrue==true) {
			request.setAttribute("status", "success");
            request.setAttribute("message", "Update successful!");
            List<Review> reviewdetails = ReviewDBUtil.Display(uid);
            request.setAttribute("rewdetails", reviewdetails);
            RequestDispatcher dis = request.getRequestDispatcher("myReviews.jsp");
			dis.forward(request, response);
		}
		else {
			request.setAttribute("status", "error");
            request.setAttribute("message", "Update failed.");	
            List<Review> reviewdetails =  ReviewDBUtil.Display(uid);
            request.setAttribute("rewdetails", reviewdetails);
			RequestDispatcher dis = request.getRequestDispatcher("EnterReview.jsp");
			dis.forward(request, response);
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
		
	}

}
