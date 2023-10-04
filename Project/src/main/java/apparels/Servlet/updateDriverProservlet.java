package apparels.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import apparels.DAO.DriverDAO;
import apparels.Modal.Driver;

/**
 * Servlet implementation class updateDriverProservlet
 */
@WebServlet("/updateDriverProservlet")
public class updateDriverProservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	private Connection connection;
	private DriverDAO driverDAO;
	
	  public void init() throws ServletException {
		    // Get the database connection from the servlet context
		    connection = (Connection) getServletContext().getAttribute("connection");
		    driverDAO = new DriverDAO(connection);
		  }
       

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    RequestDispatcher dispatcher = request.getRequestDispatcher("profile.jsp");
	    dispatcher.forward(request, response);

		
	}	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html");
	    PrintWriter out = response.getWriter();
	    
	    Driver driver = (Driver) request.getSession().getAttribute("auth");
	    request.setAttribute("auth", driver);
	    
	    String uname = request.getParameter("Uname");
	    String Fullname = request.getParameter("name");
	    String email = request.getParameter("Email");
	    
	    
	    Driver driver2 = new Driver();
	    
	    driver2.setEmail(email);
	    driver2.setFullname(Fullname);
	    driver2.setName(uname);
	    driver2.setId(driver.getId());
	    
	    
	    boolean success = driverDAO.updateProfile(driver2);
	    
	    
	    if (success) {
	    	
	    	out.print(success);
	    	
	    	response.sendRedirect("DeliveryManagement/profile.jsp");
	    }

		
		
		
	}

}
