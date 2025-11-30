package placebids;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServletBid")
public class UpdateServletBid extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bid = request.getParameter("bid");
		String bidamount = request.getParameter("bidamount");
		String bidName = request.getParameter("bidName");
		
		boolean isTrue;
		isTrue = BidController.updatedata(bid,bidamount, bidName);
		
		if(isTrue == true) {
			List<BidModel> biddetails = BidController.getById(bid);
			request.setAttribute("biddetails", biddetails);
			
			String alertMessage = "Data Update Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='BidViewServlet'</script>");
			}
		else
		{
			RequestDispatcher dis2 = request.getRequestDispatcher("GetAllBids");
			dis2.forward(request, response);
		}
		
		
		
	}

}
