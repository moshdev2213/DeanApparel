package apparels.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import apparels.DAO.DeliveryDAO;
import apparels.DAO.DriverDAO;
import apparels.Modal.Delivered;
import apparels.Modal.Delivery;
import apparels.Modal.Driver;

/**
 * Servlet implementation class AddToDelivered
 */
@WebServlet("/addtodel")
public class AddToDelivered extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
//	
//	private Connection connection;
//	private DeliveryDAO deliveryDAO;
//	
//	  public void init() throws ServletException {
//		    // Get the database connection from the servlet context
//		    connection = (Connection) getServletContext().getAttribute("connection");
//		    deliveryDAO = new DeliveryDAO(connection);
//		  }
	
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		
	    Driver driver = (Driver) request.getSession().getAttribute("auth");
	    request.setAttribute("auth", driver);
		
		
		try(PrintWriter out = response.getWriter()){
			
			ArrayList<Delivered> deliveredlist = new ArrayList<>();
			
			
			int id= Integer.parseInt(request.getParameter("id")); //receive product id from url
			Delivered delivered = new Delivered();
			
			delivered.setDid(id);
//			delivered.setGainer(getServletInfo())
			
			
			HttpSession session=request.getSession();
			
			ArrayList<Delivered> delivered_list = (ArrayList<Delivered>)session.getAttribute("delivered-list");
			
			
			if(delivered_list==null) {
				deliveredlist.add(delivered);
				session.setAttribute("delivered-list", deliveredlist);
				response.sendRedirect("DeliveryManagement/delivery.jsp");
				
				
				
				
				
			}else {
				deliveredlist = delivered_list;
				boolean exist = false;
				
				
				
				for(Delivered d: delivered_list) {
					
					if(d.getDid()==id) {
						
						 exist=true;
						 response.sendRedirect("DeliveryManagement/delivery.jsp");
						
						
						
					}
					
				}
				
				
				  if(!exist) {          //if not exist
					  
					 
					  
					  deliveredlist.add(delivered);
					  response.sendRedirect("DeliveryManagement/delivery.jsp");
				  }
					
			}
			
			for(Delivered d:delivered_list) {
				
				out.println(d.getDid());
			}
			
		
			
			
			
			
			
			
		}
	}

}
