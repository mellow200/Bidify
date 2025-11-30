package biddingPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String name = request.getParameter("name");
		String category = request.getParameter("category");
		String base_price  = request.getParameter("base_price");
		String description = request.getParameter("description");

		boolean isTrue;
		isTrue = itemlistController.updatedata(Integer.parseInt(id), name, category, base_price, description);
		
		if (isTrue == true) {
			List <itemlistmodel> itemdetails = itemlistController.getById(id);
			request.setAttribute("itemdetails", itemdetails);
			
			String alertMessage = "Data Update Succesfull";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='GetAllServlet'</script>");
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}
