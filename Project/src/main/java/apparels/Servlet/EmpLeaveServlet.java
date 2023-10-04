package apparels.Servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import apparels.DAO.EmployeeDao;
import apparels.DBcon.DbCon;
import apparels.Modal.EmpLeaves;

@WebServlet("/insertLeave")
public class EmpLeaveServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EmployeeDao inDao;

    public void init() {
        inDao = new EmployeeDao(DbCon.getConnection());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String fromDate = request.getParameter("fromDate");
        String toDate = request.getParameter("toDate");
        String type = request.getParameter("leaveType");
        String appliedDate = request.getParameter("currentDate");
        String breakDown = request.getParameter("breakDown");
        String reason = request.getParameter("reason");

        // Perform validation
        if (fromDate == null || toDate == null || fromDate.isEmpty() || toDate.isEmpty()) {
            // Handle validation error
            // For example, you can redirect the user back to the form with an error message
            response.sendRedirect(request.getContextPath() + "/EmployeeManagement/EmployeHome.jsp?error=InvalidDates");
            return;
        }

        // Validate date format (assuming the format is yyyy-MM-dd)
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);

        try {
            // Parse the dates and check if they are valid
            Date from = dateFormat.parse(fromDate);
            Date to = dateFormat.parse(toDate);

            // Check if fromDate is before toDate
            if (from.after(to)) {
                // Handle validation error
                // For example, you can redirect the user back to the form with an error message
            	
                response.sendRedirect(request.getContextPath() + "/EmployeeManagement/EmployeHome.jsp?error=InvalidDateRange");
                return;
            }

            EmpLeaves form = new EmpLeaves();
            form.setName(name);
            form.setFromDate(fromDate);
            form.setToDate(toDate);
            form.setType(type);
            form.setAppliedDate(appliedDate);
            form.setBreakdown(breakDown);
            form.setReason(reason);

            inDao.applyLeave(form);

            response.sendRedirect(request.getContextPath() + "/EmployeeManagement/EmployeHome.jsp");
        } catch (ParseException e) {
            // Handle date parsing error
            // For example, you can redirect the user back to the form with an error message
            response.sendRedirect(request.getContextPath() + "/EmployeeManagement/EmployeHome.jsp?error=InvalidDateFormat");
        }
    }
}
