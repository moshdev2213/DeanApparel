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
 * Servlet implementation class UpdateAllowanceData
 */
@WebServlet(name="UpdateAllowance",urlPatterns={"/PayrollManagement/update_allowance"})
public class UpdateAllowanceData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private PreparedStatement preSt;
	
	public UpdateAllowanceData() {
		this.conn = DbCon.getConnection();
	}
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			conn.setAutoCommit(false);
			String sql = "Update allowance Set allowance = ?, description = ?, amount = ?, roleid = ? Where id = ?";
			
			preSt = conn.prepareStatement(sql);

			preSt.setString(1, request.getParameter("allowance"));
			preSt.setString(2, request.getParameter("description"));
			preSt.setDouble(3, Double.parseDouble(request.getParameter("amount")));
			preSt.setInt(4, Integer.parseInt(request.getParameter("roleID").trim()));
			preSt.setInt(5, Integer.parseInt(request.getParameter("allowance_id")));
			
			int res = preSt.executeUpdate();
			conn.commit();
			
			if(res > 0)
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
