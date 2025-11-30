package placebids;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biddingPackage.itemlistController;
import biddingPackage.itemlistmodel;


@WebServlet("/BidPriceServlet")
public class BidPriceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<BidModel> allBids = BidController.getAllBid();
		request.setAttribute("allBids", allBids);
		
		String itemId = request.getParameter("itemId");
		List<itemlistmodel> item = itemlistController.getById(itemId);
		request.setAttribute("items", item);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("itemDetail.jsp");
		dispatcher.forward(request, response);
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
