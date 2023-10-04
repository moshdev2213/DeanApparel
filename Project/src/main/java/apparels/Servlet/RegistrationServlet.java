package apparels.Servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import apparels.DAO.LogTimeDao;
import apparels.DAO.RegTimeDao;
import apparels.DAO.UserDao;
import apparels.DBcon.DbCon;
import apparels.Modal.LogTime;
import apparels.Modal.RegTime;
import apparels.Modal.Sms;
import apparels.Modal.User;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("CustomerManagement/Cuslogin.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try (PrintWriter out = response.getWriter()) {
			
			JSONObject obj = new JSONObject();
			HttpSession mySession = request.getSession();
			
			String fname = request.getParameter("firstname");
			String lname = request.getParameter("lastname");
			
			String username = request.getParameter("username");
			String email = request.getParameter("email");
			String tel = request.getParameter("phone");
		
			String pass = request.getParameter("password");
			String repass = request.getParameter("passwordConfirmation");
			
			String otpCheckString = request.getParameter("otpCode");
			
			int otp=0;
			
			if(otpCheckString==null || otpCheckString.equals("")) {
				if (fname == null || fname.equals("")) {
					obj.put("status", "invalidfname");
					out.print(obj);

				}

				else if (lname == null || lname.equals("")) {
					obj.put("status", "invalidlname");
					out.print(obj);

				}
				else if (username == null || username.equals("")) {
					obj.put("status", "invalidname");
					out.print(obj);
					

				}
				else if (email == null || email.equals("") || !email.matches("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$")) {
				    obj.put("status", "invalidEmail");
				    out.print(obj);
				}

				// checks the pasword emptiness and reconfirm password match using elseif
				else if (pass == null || pass.equals("")) {
					obj.put("status", "invalidpwd");
					out.print(obj);
					

				}else if (!pass.equals(repass)) {
					obj.put("status", "invalidreupwd");
					out.print(obj);
					
				}
				// checks the maobile number emptinesss and length ecedding 10
				else if (tel == null || tel.equals("")) {
					obj.put("status", "invalidnumber");
					out.print(obj);
					
				}else if (tel.length() > 10) {
					obj.put("status", "invalidlength");
					out.print(obj);
				}
				else {
					// sending otp
					Random rand = new Random();
					otp = rand.nextInt(1255650);
					String reference = "DA" + rand.nextLong(1245335332520L);
					mySession.setAttribute("otp", otp);
					
					//the below is the code related to the SMS sendings
					
					String msssg = "Registration To Dean Apparels Pvt.ltd\\n\\nDear Sir/Madam, Please use the following OTP " + otp + " to complete your online Registration reference " + reference + ". Do NOT share this number with anyone.\\n\\nSincerely,\\nSupport Center\\n2023 DeanApparels Pvt.ltd\\nAll Rights Reserved";

					//ms2 works i think because of escape sequences the message does'nt sends
					//the message works we should use the dual backslashes instead for working "\\n"

//					Sms.Send(tel, msssg);
					
					//SMS sending ends here
					obj.put("status", "success");
					out.print(obj);
				}
				
			}else if(otpCheckString!=null || !otpCheckString.equals("")){
				System.out.println(mySession.getAttribute("otp"));
				System.out.println(otpCheckString);
				
				
				//CHECKS THE Entered OTP mathes Or Not
				
				if(true) {
					//insert to the Database and send OTP Correct
					try {
						
						// for user based registration queries
						UserDao udao = new UserDao(DbCon.getConnection());
						boolean user = udao.userRegister(fname, lname, username, tel, pass, email);

						if (user == true) {
							obj.put("status", "correctOtpAndReg");
							out.print(obj);
						} else {
							obj.put("status", "correctOtpAndNoReg");
							out.print(obj);
						}

					} catch (Exception e) {
						e.printStackTrace();
					}
					
					System.out.println("maruBNG");
					
				}else {
					System.out.println("CharterOII");
					obj.put("status", "incorrectOtp");
					out.print(obj);
				}
			}
		}
	}

}