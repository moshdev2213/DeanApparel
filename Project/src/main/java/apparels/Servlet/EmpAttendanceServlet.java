package apparels.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import apparels.DAO.EmployeeDao;
import apparels.DBcon.DbCon;
import apparels.Modal.EmpAttendance;


@WebServlet("/insertAttend")
public class EmpAttendanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	//Attendance Servlet
	
	
		private EmployeeDao inDao;
		
		public void init() {
		       inDao = new EmployeeDao(DbCon.getConnection());
		    }
		
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    String name = request.getParameter("name");        
	    String inTime = request.getParameter("inTime");
	    String date = request.getParameter("date");
	    String outTime = request.getParameter("outTime");
	    String workHours = request.getParameter("workHours");

	    EmpAttendance form = new EmpAttendance();
	    form.setName(name);
	    form.setPunchIn(inTime);
	    form.setDate(date);
	    form.setPunchOut(outTime);
	    form.setWorkHours(workHours);
	    
	    
	        

	    inDao.addAttend(form);

	    response.sendRedirect(request.getContextPath() + "/EmployeeManagement/EmployeHome.jsp");
	}


}
