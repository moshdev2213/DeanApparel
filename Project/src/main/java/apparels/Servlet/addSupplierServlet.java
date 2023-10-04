package apparels.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import apparels.Modal.Suppliers;
import apparels.DAO.SupplierDao;
import apparels.DBcon.DbCon;

@WebServlet("/addSupplierServlet")
public class addSupplierServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            JSONObject obj = new JSONObject();

            String status = request.getParameter("status");
            String name = request.getParameter("supplierName");
            String tel = request.getParameter("supplierContact");
            String email = request.getParameter("supplierEmail");
            String nic = request.getParameter("supplierNIC");
            String cat = request.getParameter("supplierCategory");
            String bankac = request.getParameter("supplierBank");
            String address = request.getParameter("supplierAddress");
            String city = request.getParameter("supplierCity");

            Suppliers supplier = new Suppliers();
            supplier.setName(name);
            supplier.setTel(tel);
            supplier.setEmail(email);
            supplier.setNic(nic);
            supplier.setCat(cat);
            supplier.setBankAcc(bankac);
            supplier.setAddress(address);
            supplier.setCity(city);
           

            boolean result = false;

            if (status.equals("insert")) {
                SupplierDao sDao = new SupplierDao(DbCon.getConnection());
                result = sDao.registerSupplier(supplier);

                if (result) {
                    obj.put("status", "done");
                    out.print(obj);
                } else {
                    obj.put("status", "failed");
                    out.print(obj);
                }
            } else if (status.equals("update")) { 	
                int sid = Integer.parseInt(request.getParameter("sid"));
                supplier.setId(sid);
                SupplierDao sDao = new SupplierDao(DbCon.getConnection());
                result = sDao.updateSupplier(supplier);
                System.out.println(supplier.getName());
                if (result) {
                    obj.put("status", "done");
                    out.print(obj);
                } else {
                    obj.put("status", "failed");
                    out.print(obj);
                }
            } else if (status.equals("delete")) {
                int sid = Integer.parseInt(request.getParameter("sid"));
                SupplierDao sDao = new SupplierDao(DbCon.getConnection());
                result = sDao.deleteSupplier(sid);

                if (result) {
                    obj.put("status", "done");
                    out.print(obj);
                } else {
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
