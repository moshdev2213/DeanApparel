package FinanceManagement;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deletePayment
 */
@WebServlet("/deletePayment")
public class deletePayment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Id = request.getParameter("id");
	
		
		
		
		
		
		boolean isTrue;
		isTrue=financeDbutill.deletePayment(Id);
		
		if(isTrue == true) {
		
	
			 
			 RequestDispatcher dis = request.getRequestDispatcher("StaffM.jsp");
			 dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("unsucsees.jsp");
			dis.forward(request, response);
			
		}
	}

}
