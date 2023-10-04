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

@WebServlet("/updateAttend")
public class EmpAttendUpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private EmployeeDao employeeDao;

    public void init() {
        employeeDao = new EmployeeDao(DbCon.getConnection());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
     // int id = Integer.parseInt(request.getParameter("id"));
    	String date = request.getParameter("date");
        String outTime = request.getParameter("outTime");
        String workHours = request.getParameter("workHours");

        EmpAttendance form = new EmpAttendance();
     //   form.setId(id);
        form.setDate(date);
        form.setPunchOut(outTime);
        form.setWorkHours(workHours);

        employeeDao.updateAttend(form);

        response.sendRedirect(request.getContextPath() + "/EmployeeManagement/EmployeHome.jsp");
    }
}
