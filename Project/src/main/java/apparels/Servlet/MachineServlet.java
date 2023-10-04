package apparels.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import apparels.DAO.MachineDAO;
import apparels.DBcon.DbCon;

@WebServlet("/MachineServlet")
public class MachineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try (PrintWriter out = response.getWriter()){
			
			JSONObject obj = new JSONObject();
			
			String status =request.getParameter("status");
			String addMachineMCondition = request.getParameter("addMachineMCondition");
			String addMachineMColor = request.getParameter("addMachineMColor");
			String addMachineMHandler = request.getParameter("addMachineMHandler");
			String addMachineMModal = request.getParameter("addMachineMModal");
			String addMachineMName = request.getParameter("addMachineMName");
			
			boolean result = false;
			if(status.equals("insert")) {
				MachineDAO mDao = new MachineDAO(DbCon.getConnection());
				result= mDao.insertMachine(addMachineMName, addMachineMModal, addMachineMHandler, addMachineMColor,addMachineMCondition);
				
				if(result == true) {
					obj.put("status", "done");
					out.print(obj);
				}else {
					obj.put("status", "failed");
					out.print(obj);
				}
				
			}else if(status.equals("update")) {
				int mid = Integer.parseInt(request.getParameter("mid"));
				MachineDAO mDao = new MachineDAO(DbCon.getConnection());
				result= mDao.updateMachine(addMachineMName, addMachineMModal, addMachineMHandler, addMachineMColor,addMachineMCondition,mid);
				
				if(result == true) {
					obj.put("status", "done");
					out.print(obj);
				}else {
					obj.put("status", "failed");
					out.print(obj);
				}
			}else if(status.equals("delete")){
				int mid = Integer.parseInt(request.getParameter("mid"));
				MachineDAO mDao = new MachineDAO(DbCon.getConnection());
				result= mDao.deleteMachine(mid);
				
				if(result == true) {
					obj.put("status", "done");
					out.print(obj);
				}else {
					obj.put("status", "failed");
					out.print(obj);
				}
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		doGet(request, response);
	}

}
