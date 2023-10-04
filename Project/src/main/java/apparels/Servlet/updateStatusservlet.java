package apparels.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import apparels.DAO.DeliveryDAO;
import apparels.DBcon.DbCon;
import apparels.Modal.Driver;


/**
 * Servlet implementation class updateStatusservlet
 */
@WebServlet("/updateStatus")
public class updateStatusservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try(PrintWriter out = response.getWriter()){
			
			
			out.println("this is update servlets");
			
			
			
			
			
			Driver auth = (Driver) request.getSession().getAttribute("auth");
			
			if (auth != null) {
				int id = Integer.parseInt(request.getParameter("id"));
				out.print(id);
				
				DeliveryDAO dao = new DeliveryDAO(DbCon.getConnection());
				
				dao.updateStatus(id);
				
				response.sendRedirect("DeliveryManagement/delivery.jsp");
				
				
			}
			
			
			
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
