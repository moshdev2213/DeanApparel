package apparels.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import apparels.DAO.CusProfileDao;
import apparels.DBcon.DbCon;

@WebServlet("/CusProfileAddress")
public class CusProfileAddress extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		out.print("Working");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try(PrintWriter out = response.getWriter()) {
			JSONObject obj = new JSONObject();
			
			String email =  request.getParameter("email");
			String postalCode =  request.getParameter("postalCode");
			String street =  request.getParameter("street");
			String city =  request.getParameter("city");
			String addressOf =  request.getParameter("addressOf");
			String province =  request.getParameter("province");
			String district =  request.getParameter("district");
			String updateStatus = request.getParameter("updateStatus");
//			int updateId = request.getParameter("updateId");
			String roleString = "customer";
			int id=0;

			int result=0;
			
			//updating the address
			if(updateStatus!=null) {
				int updateId = Integer.parseInt(request.getParameter("updateId"));
				CusProfileDao cpd = new CusProfileDao(DbCon.getConnection());
				result = cpd.updateAddress(province, district, street, Integer.parseInt(postalCode), city, addressOf, updateId);
				if(result>0) {
					obj.put("status", "suucessUpdate");
					out.print(obj);
				}else {
					obj.put("status", "unsuccessUpdate");
					out.print(obj);
				}
			}
			
			//inserting the address
			if(district!=null && province!=null && addressOf!=null &&  city!=null && street!=null  && postalCode!=null && updateStatus==null) {
				
				CusProfileDao cpd = new CusProfileDao(DbCon.getConnection());
				result =  cpd.insertAddress(province, district, street, Integer.parseInt(postalCode), city, email, roleString, addressOf);
				if(result>0) {
					obj.put("status", "suucessAdd");
					out.print(obj);
				}else {
					obj.put("status", "unsuccessAdd");
					out.print(obj);
				}
				
			}
			
			//deleting the address
			if(!email.equals("") && request.getParameter("id")!=null) {
				id = Integer.parseInt(request.getParameter("id"));
				CusProfileDao cpd = new CusProfileDao(DbCon.getConnection());
				result =  cpd.deleteAddress(id, email);
				if(result>0) {
					obj.put("status", "deleted");
					out.print(obj);
				}else {
					obj.put("status", "errordelete");
					out.print(obj);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		doGet(request, response);
	}

}
