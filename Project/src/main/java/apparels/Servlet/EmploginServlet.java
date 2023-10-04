package apparels.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import apparels.DAO.EmployeeDao;
import apparels.DBcon.DbCon;
import apparels.Modal.Employee;

@WebServlet("/Emplogin")
public class EmploginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            String email = request.getParameter("login-Email");
            String password = request.getParameter("login-password");

            // Validate email and password
            if (email.isEmpty() || password.isEmpty()) {
                out.println("<script>");
                out.println("alert('Please enter email and password.');");
                out.println("window.location.href='EmployeeManagement/Emplogin.jsp'");
                out.println("</script>");
                return;
            }

            if (password.length() <= 8) {
                out.println("<script>");
                out.println("alert('Password should be greater than 8 characters.');");
                out.println("window.location.href='EmployeeManagement/Emplogin.jsp'");
                out.println("</script>");
                return;
            }

            EmployeeDao empDao = new EmployeeDao(DbCon.getConnection());
            Employee emp = empDao.EmpLogin(email, password);
            if (emp != null) {
                request.getSession().setAttribute("auth", emp);
                response.sendRedirect("EmployeeManagement/EmployeHome.jsp");
            } else {
                out.println("<script>");
                out.println("alert('Login Failed. Please check your email and password.');");
                out.println("window.location.href='EmployeeManagement/Emplogin.jsp'");
                out.println("</script>");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
