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

@WebServlet("/EmpUpdateInfo")
public class EmpUpdateInfoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private EmployeeDao employeeDao;

    public void init() {
        employeeDao = new EmployeeDao(DbCon.getConnection());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
        int empId = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        String phoneNo = request.getParameter("phone");

        EmpAttendance form = new EmpAttendance();
        form.setName(name);
        form.setEmail(email);
        form.setDob(dob);
        form.setTel(phoneNo);

        employeeDao.updateEmployee(empId, form);

        response.sendRedirect(request.getContextPath() + "/EmployeeManagement/Empprofile.jsp");
    }
}