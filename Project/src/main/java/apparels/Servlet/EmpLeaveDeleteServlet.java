

package apparels.Servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import apparels.DAO.EmployeeDao;
import apparels.DBcon.DbCon;

@WebServlet("/delete")
public class EmpLeaveDeleteServlet extends HttpServlet {
    private EmployeeDao dataDao;
    
    @Override
    public void init() throws ServletException {
        // Initialize the data access object (DAO) using a database connection
        dataDao = new EmployeeDao(DbCon.getConnection());
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        
        try {
            dataDao.deleteData(id);
            response.sendRedirect(request.getContextPath() + "/EmployeeManagement/EmployeHome.jsp"); // Redirect to a success page
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp"); // Redirect to an error page
        }
    }
}

