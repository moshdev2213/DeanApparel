package apparels.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import apparels.DAO.OrderDao;
import apparels.DBcon.DbCon;

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try (PrintWriter out = response.getWriter()) {

			int result = 0;
			JSONObject obj = new JSONObject();

			// for the rating sections
			String id = request.getParameter("id");
			String email = request.getParameter("email");
			String comment = request.getParameter("comment");
			String quality = request.getParameter("quality");
			String accuracy = request.getParameter("accuracy");
			String durability = request.getParameter("durability");
			String shipping = request.getParameter("shipping");
			String asment = request.getParameter("asment");
			String reliability = request.getParameter("reliability");
			String prating = request.getParameter("prating");

			// for the cancellation form
			String oid = request.getParameter("oid");
			String reason = request.getParameter("reason");

			// for the feedback forms
			String feedbackcomment = request.getParameter("feedbackcomment");
			String feedbacklname = request.getParameter("feedbacklname");
			String feedbackfname = request.getParameter("feedbackfname");
			String feedbacktel = request.getParameter("feedbacktel");
			String feedbackemail = request.getParameter("feedbackemail");
			
			//for the refund forms
			String refundemail = request.getParameter("refundemail");
			String refundtel = request.getParameter("refundtel");
			String refundreason = request.getParameter("refundreason");
			String refundtotal = request.getParameter("refundtotal");
			
			
			OrderDao chk = new OrderDao(DbCon.getConnection());

			if (id != null && quality != null) {
				result = chk.InsertReview(comment, Integer.parseInt(prating), email, Integer.parseInt(id),
						Integer.parseInt(quality), Integer.parseInt(accuracy), Integer.parseInt(durability),
						Integer.parseInt(shipping), Integer.parseInt(asment), Integer.parseInt(reliability));
				if (result > 0) {

					obj.put("value", result);
					obj.put("status", "valid");
					out.print(obj);
				} else if (result < 0) {

					obj.put("status", "invalid");
					out.print(obj);
				}
			} else if (oid != null && reason!=null) {

				int select = 0;
				select = chk.SelectReturn(Integer.parseInt(oid));
				if (select > 0) {
					obj.put("status", "exists");
					out.print(obj);
				} else if (select <= 0) {

					result = chk.InsertReturn(reason, Integer.parseInt(oid));
					if (result > 0) {

						// obj.put("value", result);
						obj.put("status", "updated");
						out.print(obj);
					} else if (result < 0) {

						obj.put("status", "noupdate");
						out.print(obj);
					}
				}

			} else if (feedbacktel != null && feedbackfname != null && oid != null) {
				result = chk.InsertFeedback(feedbackfname, feedbacklname, feedbacktel, feedbackcomment,
						Integer.parseInt(oid), feedbackemail);
				if (result > 0) {
					obj.put("value", result);
					obj.put("status", "valid");
					out.print(obj);
				} else if (result < 0) {

					obj.put("status", "invalid");
					out.print(obj);
				}
			}else if(refundtel!=null && refundemail!=null && refundreason!=null) {
				result=chk.InsertRefund(refundreason, Integer.parseInt(oid), Double.parseDouble(refundtotal), refundemail, refundtel);
				
				if (result > 0) {
					obj.put("status", "valid");
					out.print(obj);
				} else if (result < 0) {

					obj.put("status", "invalid");
					out.print(obj);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		doGet(request, response);
	}

}
