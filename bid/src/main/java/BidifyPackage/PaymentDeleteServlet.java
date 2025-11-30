package BidifyPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentDeleteServlet")
public class PaymentDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		boolean isTrue;
		isTrue = PaymentControl.deletedata(id);
		if(isTrue == true) {
            request.setAttribute("status", "success");
            request.setAttribute("message", "delete successfuly");
			RequestDispatcher dispacher = request.getRequestDispatcher("paymentdisplay.jsp");
			dispacher.forward(request, response);
		}
		else {
			List<PaymentModel> paymentDetails = PaymentControl.getById(id);
			request.setAttribute("paymentDetails", paymentDetails);
			request.setAttribute("status", "Error");
            request.setAttribute("message", "Error");
			RequestDispatcher dispacher = request.getRequestDispatcher("wrong.jsp");
			dispacher.forward(request, response);
		}
	}

}
