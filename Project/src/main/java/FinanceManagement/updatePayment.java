package FinanceManagement;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/updatePayment")
public class updatePayment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Id = request.getParameter("id");
		String 	Name = request.getParameter("name");
		String Email =request.getParameter("email");
		String Card_numebr =request.getParameter("card");
		
		
		
		
		
		boolean isTrue;
		isTrue=financeDbutill.UpdatePayment(Id, Name, Email, Card_numebr);
		
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
