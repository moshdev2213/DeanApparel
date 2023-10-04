package apparels.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import apparels.DBcon.DbCon;

/**
 * Servlet implementation class DeleteDeduction
 */
@WebServlet(name="DeleteDeduction",urlPatterns={"/PayrollManagement/delete_deduction"})

public class DeleteDeduction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private PreparedStatement preSt;
	
	public DeleteDeduction() {
		this.conn = DbCon.getConnection();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {

			String sql = "Delete From deduction  Where id = ?";

			preSt = conn.prepareStatement(sql);
			preSt.setString(1, request.getParameter("deduction_id"));
			
			int returned = preSt.executeUpdate();
			
			if(returned > 0)
			{
				response.sendRedirect(request.getContextPath() + "/PayrollManagement/PayRollM.jsp?SuccessMessage=success");
				
			}else {
				response.sendRedirect(request.getContextPath() + "/PayrollManagement/PayRollM.jsp?ErrorMessage=error");
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			response.sendRedirect(request.getContextPath() + "/PayrollManagement/PayRollM.jsp?ErrorMessage=error");
		}
	}

}
