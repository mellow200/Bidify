package com.rew;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.User;
import com.user.UserDBUtil;

@WebServlet("/ReviewDeleteServlet")
public class ReviewDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int rid = Integer.parseInt(request.getParameter("rid"));
		boolean isTrue;
		isTrue = ReviewDBUtil.deleteReview(rid);
		
		
		if(isTrue == true) {
			request.setAttribute("status", "success");
	        request.setAttribute("message", "Sucessfuly deleted");
			RequestDispatcher dis = request.getRequestDispatcher("EnterReview.jsp");
			dis.forward(request, response);
			
		}
		else {
			request.setAttribute("status", "error");
	        request.setAttribute("message", "Delete rew failed");
			List<Review> rew = ReviewDBUtil.Display(rid);
            request.setAttribute("rewdetails", rew);
            RequestDispatcher dis = request.getRequestDispatcher("EnterReview.jsp");
			dis.forward(request, response);
            
		}
		
	}

}
