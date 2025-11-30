package BidifyPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PaymentUpdateServlet")
public class PaymentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String card_number = request.getParameter("card_number");
		String expiry_date = request.getParameter("expiry_date");
		String cvv = request.getParameter("cvv");
		
		
		boolean isTrue;
		isTrue= PaymentControl.updatedata(id, name, card_number, expiry_date, cvv);
		
		if (isTrue == true) {
			List<PaymentModel> paymentdetails = PaymentControl.getById(id);
			request.setAttribute("paymentdetails",paymentdetails);
			
			String alertMessage = "Data Update Successful";
			response.getWriter().println("<script>alert('"+alertMessage+"'); window.location.href = 'PaymentGetAllServlet'</script> ");			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}
