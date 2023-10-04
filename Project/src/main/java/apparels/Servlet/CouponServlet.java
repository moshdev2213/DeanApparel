package apparels.Servlet;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import apparels.DAO.CartDao;
import apparels.DAO.CouponsDao;
import apparels.DBcon.DbCon;
import apparels.Modal.Cart;

@WebServlet("/CouponServlet")
public class CouponServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try (PrintWriter out = response.getWriter()) {
	
			String cpn = request.getParameter("cpn");
					
			JSONObject obj = new JSONObject();
			CouponsDao cpnDao = new CouponsDao(DbCon.getConnection());
			
			
			int result = 0;
			result = cpnDao.getCoupon(cpn);
		
			if (result != 0) {

				obj.put("value", result);
				obj.put("addstatus", "valid");
				out.print(obj);
			} else {

				obj.put("addstatus", "invalid");
				
				out.print(obj);
//					response.sendError(HttpServletResponse.SC_NOT_FOUND);
			}

		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
