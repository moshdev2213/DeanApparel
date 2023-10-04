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
import apparels.Utils.CommonUtils;

/**
 * Servlet implementation class AddDeduction
 */
@WebServlet(name="AddDeduction",urlPatterns={"/PayrollManagement/add_deduction"})

public class AddDeduction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private PreparedStatement preSt;
	
	public AddDeduction() {
		this.conn = DbCon.getConnection();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			conn.setAutoCommit(false);
			
			String sql = "Insert into deduction(reference, deduction, description, amount, roleid, date) values(?, ?, ?, ?, ?, ?)";
			preSt = conn.prepareStatement(sql);
	
			int lastItmId = CommonUtils.getLastItemID("deduction");
			String refID = CommonUtils.generateItemId(lastItmId, "DE000");
			
			preSt.setString(1, refID);
			preSt.setString(2, request.getParameter("deduction"));
			preSt.setString(3, request.getParameter("description"));
			preSt.setDouble(4, Double.parseDouble(request.getParameter("amount")));
			preSt.setInt(5, Integer.parseInt(request.getParameter("roleID")));
			preSt.setString(6, CommonUtils.getCurrentDateTIme());
			
			int res = preSt.executeUpdate();
			conn.commit();
			
			if(res > 0)
			{
				response.sendRedirect(request.getContextPath() + "/PayrollManagement/PayRollM.jsp?SuccessMessage=success");
				
			}else {
				response.sendRedirect(request.getContextPath() + "/PayrollManagement/PayRollM.jsp?ErrorMessage=error");
			}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
			response.sendRedirect(request.getContextPath() + "/PayrollManagement/PayRollM.jsp?ErrorMessage=error");
		}
	}

}
