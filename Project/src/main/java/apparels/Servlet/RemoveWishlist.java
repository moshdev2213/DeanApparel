package apparels.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import apparels.DAO.WishDao;
import apparels.DBcon.DbCon;

@WebServlet("/RemoveWishlist")
public class RemoveWishlist extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try (PrintWriter out = response.getWriter()) {
//        	out.print("add to cart servlet");
        	RequestDispatcher dispatcher = null;

        	//for the cartquantity session to print in the cart icon nav
        	String quantity = "";

            int removeid = Integer.parseInt(request.getParameter("removeid"));
            String email = request.getParameter("email");
     
            
            JSONObject obj=new JSONObject();
			WishDao wishcontent = new WishDao(DbCon.getConnection());
			int result= 0;
			result= wishcontent.fetchitem(removeid,email);
			if (result>0) {
				wishcontent.removeitem(removeid,email);
				
				//for the cartquantity session to print in the cart icon nav
				wishcontent.wishquantity(email);
				quantity = Integer.toString( wishcontent.wishquantity(email));
				request.getSession().setAttribute("wishquantity", quantity);
				
				obj.put("quantity", quantity);
				obj.put("deletestatus","success");
				out.print(obj);
			}
			else {
				obj.put("deletestatus","failed");
				out.print(obj);
			}
            
            
        }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
