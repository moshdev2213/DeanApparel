package FinanceManagement;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/search_payment")
public class search_payment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String ID= request.getParameter("id");
		
		  
		  try {
					List<payment>payDetails = financeDbutill.validate(ID);
					request.setAttribute("payDetails", payDetails); 
		  }
		  catch(Exception e) {
			  e.printStackTrace();
		  }
		 
		 RequestDispatcher dis = request.getRequestDispatcher("payment_account.jsp");
		 dis.forward(request, response);
		}
		
		
		
	}


