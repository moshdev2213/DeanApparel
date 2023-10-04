package apparels.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import apparels.DAO.CheckOutDao;
import apparels.DBcon.DbCon;

@WebServlet("/CheckoutServlet")
public class CheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try (PrintWriter out = response.getWriter()){
			String vid = request.getParameter("vid");
			double fee=0;
			JSONObject obj = new JSONObject();
			
			CheckOutDao chk=new CheckOutDao(DbCon.getConnection());
			fee = chk.getFee(vid);
			
			if (fee > 0) {

				obj.put("value", fee);
				obj.put("status", "valid");
				out.print(obj);
			} else if(fee<0){

				obj.put("status", "invalid");
				out.print(obj);
//					response.sendError(HttpServletResponse.SC_NOT_FOUND);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		//accessing the data that is from the URl thats being passed from the Singleproduct.jsp
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String piece = request.getParameter("piece");
		String size = request.getParameter("size");
		String id= request.getParameter("id");
		String color = request.getParameter("favcolor");
		String  email = request.getParameter("email");
		
		String address = request.getParameter("c_address");
		String district = request.getParameter("c_district");
		String province = request.getParameter("c_province");
		String postal = request.getParameter("c_postal_zip");
		String city = request.getParameter("c_city");
		String fname = request.getParameter("c_fname");
		String lname = request.getParameter("c_lname");
		String company = request.getParameter("c_companyname");
		String bemail = request.getParameter("c_email_address");
		String phone = request.getParameter("c_phone");
		String notes = request.getParameter("c_order_notes");
		String coupon = request.getParameter("cpn");
		String vehicle = request.getParameter("c_vehicle");


		String cname = request.getParameter("cardname");
		String ctype = request.getParameter("cardtype");
		String csv = request.getParameter("csv");
		String expire = request.getParameter("cardexpire");
		String cnum = request.getParameter("cardnum");
		
		//System.out.println(piece+"	"+size+"	"+id+"	"+color+"	"+address+"	"+country+"	"+cname+"	"+province+"	"+postal+"	"+city+"	"+fname+"	"+lname+"	"+company+"	"+email+"	"+phone+"	"+notes+"	"+coupon+"	"+vehicle+"	"+ctype+"	"+csv+"	"+expire+"	"+cnum);
		
		Random random = new Random();
		int randnum =  random.nextInt(1000000);
		String prefix = "INV"+randnum;
		
		int payid;
		double productprice;
		double cpnprice;
		double deliveryprice;
		double total;
		
		int dprice=Integer.parseInt(vehicle);
		int quantity=Integer.parseInt(piece);
		
		int invoiceId;
		int oAddressId;
		int oinfoId;
		int paylastId;
		
		CheckOutDao chk= new CheckOutDao(DbCon.getConnection());
		
		payid=chk.getPtype(ctype);
		productprice= chk.getPpice(id);
		cpnprice=chk.getPcpn(coupon);
		deliveryprice=chk.getDprice(dprice);
		total=productprice*quantity+cpnprice+deliveryprice;
		
		
		
		chk.InsertInvoice(prefix);
		invoiceId=chk.getInvoiceId(prefix);
		
		chk.InsertOrderddress(city, district, province, address, company);
		oAddressId=chk.getOaddressId(city, district, province, address, company);
		
		chk.InsertOrderinfo(fname, lname, phone, notes, coupon);
		oinfoId= chk.getOinfId(fname, lname, phone, notes, coupon);
		
		chk.InsertPayment(payid, email, cname, cnum, csv, expire, cpnprice, deliveryprice, productprice*quantity, total);
		paylastId= chk.getPayId(payid, email, cname, cnum, csv, expire, cpnprice, deliveryprice, productprice*quantity, total);
		
		chk.InsertOrder(email, quantity,Integer.parseInt(id), paylastId, invoiceId,Integer.parseInt(vehicle), oAddressId, oinfoId, size, color);

		response.sendRedirect("CustomerManagement/orderDetails.jsp");
		doGet(request, response);

	}

}
