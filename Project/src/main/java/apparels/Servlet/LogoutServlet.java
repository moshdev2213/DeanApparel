package apparels.Servlet;

import java.io.IOException;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.x.protobuf.MysqlxSession.AuthenticateContinue;

import apparels.DAO.LogTimeDao;
import apparels.DBcon.DbCon;
import apparels.Modal.User;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("auth") != null) {

			User authin = (User) request.getSession().getAttribute("auth");
			LogTimeDao lgt = new LogTimeDao(DbCon.getConnection());
			lgt.updateLogs(authin.getEmail());
			
			request.getSession().removeAttribute("auth");
			response.sendRedirect("CustomerManagement/Cuslogin.jsp");
		}
		else if(request.getSession().getAttribute("authadmin") != null) {
			request.getSession().removeAttribute("authadmin");
			response.sendRedirect("login.jsp");
		}
		else {
			response.sendRedirect("Landing.jsp");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
