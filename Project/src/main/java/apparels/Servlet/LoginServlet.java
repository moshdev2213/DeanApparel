package apparels.Servlet;

import java.io.IOException;



import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import apparels.DBcon.DbCon;
import apparels.DAO.AdminDao;
import apparels.DAO.CartDao;
import apparels.DAO.WishDao;
import apparels.DAO.LogTimeDao;
import apparels.DAO.UserDao;
import apparels.Modal.Admin;
import apparels.Modal.LogTime;
import apparels.Modal.SecurityEmail;
import apparels.Modal.User;
import apparels.Modal.Sms;

@WebServlet("/LoginServlet")	 
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("CustomerManagement/Cuslogin.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF8");
		try(PrintWriter out = response.getWriter()){
				
				RequestDispatcher dis = null;
				JSONObject obj=new JSONObject();
				//parameter catching from the form
				String email=request.getParameter("email");
				String password=request.getParameter("password");
				int role = 3;
				
				
				//for the cartquantity session to print in the cart icon nav
				String quantity = "";
				
				String wishquantity = "";
				
				String ip =request.getParameter("ip");
				String isp =request.getParameter("isp");
				String country =request.getParameter("country");
				String city =request.getParameter("city");
				String region =request.getParameter("region");
				String lat =request.getParameter("latitude");
				String longs =request.getParameter("longitude");
				String browser =request.getParameter("browser");

				String leisure = request.getParameter("leisure");
				String road = request.getParameter("road");
				String neighbourhood = request.getParameter("neighbourhood");
				String hamlet = request.getParameter("hamlet");
				String town = request.getParameter("town");
				String state_district = request.getParameter("state_district");
				String state = request.getParameter("state");
				String postcode = request.getParameter("postcode");
				String deviceType = request.getParameter("deviceType");
				String country_code = request.getParameter("country_code");
				
				//System.out.println(lat+" "+longs+" "+postcode+" "+state+" "+deviceType);
				
				//for the cartquantity session to print in the cart icon nav
				CartDao cartcontent = new CartDao(DbCon.getConnection());
				quantity = Integer.toString( cartcontent.cartquantity(email));
				request.getSession().setAttribute("quantity", quantity);
			
				//for the cartquantity session to print in the cart icon nav
				WishDao wishcontent = new WishDao(DbCon.getConnection());
				wishquantity = Integer.toString( wishcontent.wishquantity(email));
				request.getSession().setAttribute("wishquantity", wishquantity);
				
				// object made to format the date
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
				// object made to format the date
				SimpleDateFormat formatter_year = new SimpleDateFormat("yyyy");
				// object made to format the time
				SimpleDateFormat formatter_time = new SimpleDateFormat("hh:mm:ss aa");
				// object made to format the time
				SimpleDateFormat formatter_day = new SimpleDateFormat("EEEE");
				// object made to format the time
				SimpleDateFormat formatter_month = new SimpleDateFormat("MMMM");

				// captures the date and time
				Date date = new Date();
				Date time = new Date();
				Date day = new Date();
				Date month = new Date();
				//for user based login credentials
				UserDao udao = new UserDao(DbCon.getConnection());
				User user = udao.userLogin(email,password);
				
				if(email== null || email.equals("")) {
					obj.put("status", "invalidEmail");
					out.print(obj);
				}
				else if(password== null || password.equals("")) {
					obj.put("status", "invalidPassword");
					out.print(obj);
				}else if(user !=null) {
					
					
					request.getSession().setAttribute("auth", user);
				
					
					//related to the logintime tables
					LogTime logtime = new LogTime();
					logtime.setUemail(email);
					logtime.setDate(formatter.format(date));
					logtime.setTime(formatter_time.format(time));
					logtime.setDay(formatter_day.format(day));
					logtime.setMonth(formatter_month.format(month));
					logtime.setRole(role);
					
					LogTimeDao lgtime= new LogTimeDao(DbCon.getConnection()); 
					boolean result = lgtime.insertlogs(logtime);
					
					int lids=lgtime.lastLogID(email, formatter_time.format(time));
					if(lat==null) {
						lat = "0.0";
					}else if(longs==null) {
						longs="0.0";
					}else if(postcode==null) {
						postcode = "0";
					}
					lgtime.insertlogsDetection(lids, ip, isp,Double.parseDouble(lat), Double.parseDouble(longs),Integer.parseInt(postcode), leisure, road, neighbourhood, hamlet, town, state_district, state, country_code, country, deviceType);
					
					
					//the boelow is the code related to the sms sendings
					String mssg = "SIGN IN DETECTED\\n\\nWe noticed a new Sign to your Weena Naadha account our system monitored login to our user accounts and credentials are as follows\\n\\nTime\\t:"+formatter_time.format(time)+"\\nDate\\t:"+formatter_day.format(day)+" "+formatter_month.format(month)+"\\nIP\\t:"
							+ ip + "\\nISP\\t:" + isp + "\\nBrowser\\t:" + browser + "\\nCity\\t:" + city + "\\nRegion\\t:"
							+ region + "\\nCountry\\t:" + country+"\\nLatitude\\t:"+lat+"\\nLongitude\\t:"+longs
							+ "\\n\\nIf you Dont Recogonize the Above Credentials someone else might be trying to access your account. Please log in to your account and Change your Credentials in order to Secure your account\\n\\nIf the login was done by your kindly Ignore this message\\n\\nSincerly,\\nThe Weena Naadha Support Center\\n\\n\\n 2022 WeenaLk\\nAll Rights Reserved";

					
					//ms2 works i think because of escapr sequences the msg doent sends
					//the message works we should use the dual blackslashes instead for working "\\"
					
//					Sms.Send(user.getTel(), mssg);
					
					//sms sending ends here
					
					// email body insert here
					
					//mail forwarding ends here
					
					obj.put("status", "success");
					obj.put("location", "Products.jsp");
					out.print(obj);
				}
				else {
					obj.put("status", "invalidCredentials");
					out.print(obj);
				}
			
		}
	}

}
