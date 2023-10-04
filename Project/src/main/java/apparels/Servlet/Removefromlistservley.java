package apparels.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import apparels.Modal.Delivered;


/**
 * Servlet implementation class Removefromlistservley
 */
@WebServlet("/remove")
public class Removefromlistservley extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out = response.getWriter()){
			String id = request.getParameter("id");
			out.print("del id"+ id);
			
				if(id!=null) {
				
				ArrayList<Delivered> delivered_list = (ArrayList<Delivered>) request.getSession().getAttribute("delivered-list");
				
				
				if(delivered_list!=null) {
					for(Delivered d:delivered_list) {
						
						if(d.getDid()==Integer.parseInt(id)) {
							
							delivered_list.remove(delivered_list.indexOf(d));
							break;
						}
					}
					
					response.sendRedirect("DeliveryManagement/delivery.jsp");
				}
				
				
				
				}else {
					response.sendRedirect("DeliveryManagement/delivery.jsp");
					
				}
			
		}
	}

}
