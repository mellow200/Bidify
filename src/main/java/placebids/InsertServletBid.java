package placebids;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertServletBid")
public class InsertServletBid extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bidamount = request.getParameter("bidamount");
		String bidName = request.getParameter("bidName");
		
		boolean isTrue;
		
		isTrue = BidController.insertData(bidamount,bidName);
		
		if(isTrue == true) {
			String alertMessage = "Data Insertion Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='BidViewServlet'</script>");
			}
		else
		{
			RequestDispatcher dis2 = request.getRequestDispatcher("itemDetail.jsp");
			dis2.forward(request, response);
		}
	}

}
