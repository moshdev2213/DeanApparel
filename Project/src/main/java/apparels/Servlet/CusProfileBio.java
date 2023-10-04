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

@WebServlet("/CusProfileBio")
public class CusProfileBio extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try(PrintWriter out = response.getWriter()) {
			JSONObject obj = new JSONObject();
			int result=0;
			String newpass = "nope";
			String confirmnewpass = "yep";
			
			newpass = request.getParameter("newpassword");
			confirmnewpass = request.getParameter("newconfirmpassword"); 
			
			String email = request.getParameter("email");
			String dltAct = request.getParameter("deleteact");
			
			if(dltAct!=null) {
				CusProfileDao cpd = new CusProfileDao(DbCon.getConnection());
				result = cpd.userActStatusChange(email);
				if(result>0) {

					obj.put("status", "actdeleted");
					out.print(obj);
				}else {

					obj.put("status", "errordlt");
					out.print(obj);
				}
			}
			
			else if(newpass==confirmnewpass || newpass.equals(confirmnewpass)) {
				CusProfileDao cpd = new CusProfileDao(DbCon.getConnection());
				result = cpd.userPasswordChange(email, newpass);
				if(result>0) {

					obj.put("status", "passwordChanged");
					out.print(obj);
				}else {

					obj.put("status", "errorChanging");
					out.print(obj);
				}
			}else if(newpass!=confirmnewpass){
				obj.put("status", "confirmnomatch");
				out.print(obj);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		doGet(request, response);
	}

}
