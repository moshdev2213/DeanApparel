package apparels.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import apparels.DAO.CusProfileDao;
import apparels.DBcon.DbCon;
import apparels.Modal.Card;

@WebServlet("/CusProfileServlet")
public class CusProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int result = 0;
		JSONObject obj = new JSONObject();
		String role = "customer";

		try (PrintWriter out = response.getWriter()) {
			String cnum = request.getParameter("card_number");
			String cholder = request.getParameter("card_holder");
			String cname = request.getParameter("card_name");
			String csv = request.getParameter("card_csv");
			String email = request.getParameter("email");
			String expire = request.getParameter("card_expiration");

			String deleteId = request.getParameter("deleteid");
			String viewId = request.getParameter("viewid");
			String updateId = request.getParameter("updateId");

			CusProfileDao cpDao = new CusProfileDao(DbCon.getConnection());

			if (deleteId != null) {
				result = cpDao.deleteCard(Integer.parseInt(deleteId), email);

				if (result == 1) {
					obj.put("status", "deleted");
					out.print(obj);
				} else {

					obj.put("status", "nodelete");
					out.print(obj);
				}
			}else if (email != null && updateId != null && cholder!=null && csv!=null) {
				
				result = cpDao.checkCardByAll(email, cnum,cname,cholder,csv);

				if (result >=1) {
					obj.put("status", "exist");
					out.print(obj);
				} else {
					cpDao.updateCard(cholder,csv,expire ,Integer.parseInt(updateId));
					obj.put("status", "noexist");
					out.print(obj);
				}
				
			}else if (email != null && cnum != null) {
				result = cpDao.checkCardinfo(email, cnum);

				if (result > 1) {
					obj.put("status", "exist");
					out.print(obj);
				} else {
					cpDao.InsertCardinfo(cholder, cnum, expire, csv, cname, email, role);
					obj.put("status", "noexist");
					out.print(obj);
				}
			} else if (email != null && viewId != null) {
				Card c = new Card();
				c = cpDao.getCardById(viewId);
				
				String cnumby = c.getCnum();
				String lastThree = cnumby.substring(cnumby.length() - 4);

				String htmlString = ""
						+ "												<div class=\"row mt-4\">\n"
						+ "													<div class=\"col-8\">\n"
						+ "														<img class=\"w-30\" src=\"../assets/img/logos/chip.png\"\n"
						+ "															alt=\"\" />\n"
						+ "													</div>\n"
						+ "													<div\n"
						+ "														class=\"col-4 d-flex justify-content-center align-items-center\">\n"
						+ "														<i class=\"fas fa-wifi text-white p-2 fs-5\"\n"
						+ "															style=\"transform: rotate(90deg);\"></i>\n"
						+ "													</div>\n"
						+ "												</div>\n" + "\n" + "\n"
						+ "												<div class=\"row\">\n"
						+ "													<div class=\"col-12 d-flex justify-content-center\">\n"
						+ "														<h5 class=\"text-white mt-1 mb-2 pb-0 h3 fw-bold\">\n"
						+ "															****&nbsp;&nbsp;&nbsp;****&nbsp;&nbsp;&nbsp;****&nbsp;&nbsp;&nbsp;"+lastThree+"\n"
						+ "														</h5>\n"
						+ "													</div>\n"
						+ "												</div>\n" + "\n"
						+ "												<div class=\"d-flex\">\n"
						+ "													<div class=\"d-flex align-items-center\">\n"
						+ "														<div class=\"me-4\">\n"
						+ "															<p class=\"text-white text-sm opacity-8 mb-0\">Card\n"
						+ "																Holder</p>\n"
						+ "															<h6 class=\"text-white mb-0\">"+c.getCname()+"</h6>\n"
						+ "														</div>\n"
						+ "														<div>\n"
						+ "															<p class=\"text-white text-sm opacity-8 mb-0\">Expires\n"
						+ "															</p>\n"
						+ "															<h6 class=\"text-white mb-0\">"+c.getCexpire()+"</h6>\n"
						+ "														</div>\n"
						+ "													</div>\n"
						+ "													<div\n"
						+ "														class=\"ms-auto w-30 d-flex align-items-end justify-content-end\">\n"
						+ "														<img class=\"w-60 mt-0\"\n"
						+ "															src=\"../assets/img/Cards/"+c.getCtype()+".png\"\n"
						+ "															alt=\"logo\" />\n"
						+ "													</div>\n"
						+ "												</div>";

				obj.put("value", htmlString);
				obj.put("status", "done");
				out.print(obj);
				
			}else if (email != null && updateId != null) {
				Card card = new Card();
				card = cpDao.getCardById(updateId);
				
				obj.put("cnum", card.getCnum());
				obj.put("cname", card.getCname());
				obj.put("csv", card.getCvc());
				obj.put("cexpire", card.getCexpire());
				obj.put("status", "done");
				out.print(obj);
			}

		} catch (Exception e) {

		}

		doGet(request, response);
	}

}
