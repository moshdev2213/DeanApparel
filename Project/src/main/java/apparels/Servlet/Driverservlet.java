package apparels.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import apparels.DAO.DriverDAO;
import apparels.DBcon.DbCon;
import apparels.Modal.Driver;

import java.io.IOException;
import java.sql.SQLException;


@WebServlet("/Driver")
public class Driverservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("Deliverylogin.jsp");
	}

	
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     
		response.setContentType("text/html;charset=UTF-8");
		
		try(PrintWriter out= response.getWriter()){
			
			String emailString=request.getParameter("email");
			String passwordString=request.getParameter("password");
			
			
			
			
			
			
			
			
			
			try {
				
				DriverDAO dDao = new DriverDAO(DbCon.getConnection());
				Driver driver = dDao.driverlogin(emailString, passwordString);
				
				if(driver!=null) {
					request.getSession().setAttribute("auth", driver);
					response.sendRedirect("DeliveryManagement/delivery.jsp");
					
					
				}else {
					out.print("login failed");
				}
				
				
					
				
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				
			}
			out.print(emailString+passwordString);
			
			
			
		}

		
		
	  }
	  


}









