package BidifyPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentGetAllServlet")
public class PaymentGetAllServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<PaymentModel> allPayments = PaymentControl.getAllPayment();

        // Get the latest (last) payment if the list is not empty
        PaymentModel latestPayment = null;
        if (allPayments != null && !allPayments.isEmpty()) {
            latestPayment = allPayments.get(allPayments.size() - 1);
        }

        // Set only the latest payment as an attribute
        request.setAttribute("latestPayment", latestPayment);

        // Forward to JSP
        RequestDispatcher dispatcher = request.getRequestDispatcher("paymentdisplay.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
