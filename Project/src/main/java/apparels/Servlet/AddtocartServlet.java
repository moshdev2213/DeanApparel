package apparels.Servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import apparels.DBcon.*;
import apparels.DAO.*;
import apparels.Modal.*;

@WebServlet("/AddtocartServlet")
public class AddtocartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try (PrintWriter out = response.getWriter()) {
//        	out.print("add to cart servlet");
			RequestDispatcher dispatcher = null;

			//for the cartquantity session to print in the cart icon nav
			String cartquant = "";
			
			String email = request.getParameter("email");
			int id = Integer.parseInt(request.getParameter("id"));

			Cart cm = new Cart();
			cm.setId(id);
			
			JSONObject obj = new JSONObject();
			CartDao cartcontent = new CartDao(DbCon.getConnection());
			int result = 0;
			result = cartcontent.fetchitem(id,email);
			if (result == 0) {
				boolean yes = false;
				int quantity = 0;
				yes = cartcontent.inserttoCart(email, id);
				quantity = cartcontent.cartquantity(email);
				
				//for the cartquantity session to print in the cart icon nav
				cartquant = Integer.toString( quantity);
				request.getSession().setAttribute("quantity", cartquant);
			
				obj.put("quantity", quantity);
				obj.put("addstatus", "added");
				out.print(obj);
			} else {

				obj.put("addstatus", "exist");
				out.print(obj);
//					response.sendError(HttpServletResponse.SC_NOT_FOUND);
			}

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
