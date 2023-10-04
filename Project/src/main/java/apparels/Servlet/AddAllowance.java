package apparels.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import apparels.DBcon.DbCon;
import apparels.Utils.CommonUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class AddAllowance
 */
@WebServlet(name="AddAllowance",urlPatterns={"/PayrollManagement/add_allowance"})

public class AddAllowance extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private PreparedStatement preSt;
	
	public AddAllowance() {
		this.conn = DbCon.getConnection();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("POST");
		
		try
		{
			conn.setAutoCommit(false);
			
			String sql = "Insert into allowance(reference, allowance, description, amount, roleid, date) values(?, ?, ?, ?, ?, ?)";
			preSt = conn.prepareStatement(sql);
	
			int lastItmId = CommonUtils.getLastItemID("allowance");
			String refID = CommonUtils.generateItemId(lastItmId, "AL000");
			
			preSt.setString(1, refID);
			preSt.setString(2, request.getParameter("allowance"));
			preSt.setString(3, request.getParameter("description"));
			preSt.setDouble(4, Double.parseDouble(request.getParameter("amount")));
			preSt.setInt(5, Integer.parseInt(request.getParameter("roleID")));
			preSt.setString(6, CommonUtils.getCurrentDateTIme());
			
			int res = preSt.executeUpdate();
			conn.commit();
			
			if(res > 0)
			{
//				System.out.println("success!");
//				String SMsg = "Data Saved Successfully!";
//				request.setAttribute("SuccessMessage", SMsg);
//				
//				RequestDispatcher dis1 = request.getRequestDispatcher("PayRollM.jsp");
//				dis1.forward(request, response);
//				response.sendRedirect(request.getSession().getServletContext().getRealPath("/registeration.jsp"));
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


//Test
//
//
//@WebServlet(name="Hello",urlPatterns={"/hello"})
//public class AddAllowance extends HttpServlet {
//  public void doGet(HttpServletRequest request,
//                    HttpServletResponse response)
//      throws ServletException, IOException {
//    PrintWriter out = response.getWriter();
//    out.println("Hello World");
//    System.out.println("Aaa");
//  }
//}



