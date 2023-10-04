package apparels.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import apparels.DAO.DriverDAO;
import apparels.Modal.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/add-licen")
public class Addlicenservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Connection connection;
	private DriverDAO driverDAO;
	
	  public void init() throws ServletException {
		    // Get the database connection from the servlet context
		    connection = (Connection) getServletContext().getAttribute("connection");
		    driverDAO = new DriverDAO(connection);
		  }
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    RequestDispatcher dispatcher = request.getRequestDispatcher("lisce.jsp");
	    dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html");
	    PrintWriter out = response.getWriter();
	    
	    Driver driver = (Driver) request.getSession().getAttribute("auth");
	    request.setAttribute("auth", driver);
		
		String name = request.getParameter("fullname");
		
		String issudate = request.getParameter("Idate");
		String expdate = request.getParameter("Exdate");
		String dob = request.getParameter("dob");
		String add = request.getParameter("Add");
		String blood = request.getParameter("blood");
		String licencecardid = request.getParameter("licencecardid");
		String Type = request.getParameter("type");
		String created = request.getParameter("created");
		int driverid = driver.getId();
		
		
		Licence licence = new Licence(name, issudate, expdate, dob, add, blood, licencecardid, Type, created, driverid);
		

		
		
		boolean success = driverDAO.insertLicenceDetails(licence);
		
		
	    if (success) {
	        response.sendRedirect(request.getContextPath() + "/lisce.jsp");
	        System.out.println("success");
	    	
	    	
//	        out.println("<div class='alert alert-success alert-dismissible fade show' role='alert'>");
//	        out.println("  Data insertion successful!");
//	        out.println("  <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>");
//	        out.println("</div>");
//	        out.println("<script>");
//	        out.println("  setTimeout(function(){");
//	        out.println("    window.location = '/lisce.jsp';"); // replace with your desired page
//	        out.println("  }, 2000);");
//	        out.println("</script>");
	      }
		


	}

}
