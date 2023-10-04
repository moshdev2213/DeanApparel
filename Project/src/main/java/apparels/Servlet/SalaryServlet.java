package apparels.Servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.mysql.cj.xdevapi.JsonString;

import apparels.DAO.AllowanceDao;
import apparels.DAO.AttendanceDao;
import apparels.DAO.BankDao;
import apparels.DAO.DeductionsDao;
import apparels.DAO.SalaryMDao;
import apparels.DBcon.DbCon;
import apparels.Modal.Allowance;
import apparels.Modal.Bank;
import apparels.Modal.Deduction;
import apparels.Utils.CommonUtils;

@WebServlet("/SalaryServlet")
public class SalaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn = DbCon.getConnection();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try (PrintWriter out = response.getWriter()) {
			
			String empmail = request.getParameter("empmail");
			String fordb = request.getParameter("for");
			String message = request.getParameter("message");
			// for the by email after implementing the admin email from session insert it
			// now ots dummy
			String adminmail = "dummyAdmin";

			
			JSONObject obj = new JSONObject();
			SalaryMDao sDao = new SalaryMDao(DbCon.getConnection());

			if (empmail != null && fordb != null && message != null) {
				int returns[] = { 0, 0 };
				returns = sDao.GetUnSeenNotifications(empmail);
				if (returns[0] > 0) {
					obj.put("date", returns[1]);
					obj.put("status", "exist");
					out.print(obj);
				} else if (returns[0] <= 0) {
					int result = 0;
					String role = "employee";

					result = sDao.EmpNotification(message, adminmail, empmail, role);
					if (result > 0) {
						obj.put("status", "added");
						out.print(obj);
					} else if (result <= 0) {

						obj.put("status", "notadded");
						out.print(obj);
					}
				}

			} else if (empmail != null && fordb != null) {
				StringBuilder html = new StringBuilder();
				HashMap<Integer, String> banks = new HashMap<Integer, String>();

				banks = sDao.getALLPaySlips(empmail);
				for (Entry<Integer, String> entry : banks.entrySet()) {

					String wordbreak = entry.getValue();
					String[] words = wordbreak.split("  ");

					String joined = words[0];
					String designation = words[1];
					String dayz = words[2];
					String empid = words[3];
					String mail = words[4];
					
//					System.out.println(dayz);
					
					html.append("<a data-sid='" + entry.getKey() + "' data-empjoin='" + joined
							+ "' data-empdesignation='" + designation + "' data-empdayz='" + dayz + "' data-empid='"
							+ empid + "' data-empmail='" + mail + "' class='dropdown-item forThepaySlipJSP' href='#'>"
							+ dayz + "</a>");

				}
				if (html.toString().equals("")) {
					obj.put("value", "");
					obj.put("status", "invalid");
					out.print(obj);
				} else if (!html.toString().equals("")) {

					obj.put("value", html.toString());
					obj.put("status", "valid");
					out.print(obj);
				}

			} else if (empmail != null) {

				StringBuilder html = new StringBuilder();
				String[] topayString = { "", "" };
				HashMap<Integer, String> banks = new HashMap<Integer, String>();

				banks = sDao.getALLBankAccounts(empmail);
				topayString = sDao.GetUnPaidSalaryDates(empmail);

				for (Entry<Integer, String> entry : banks.entrySet()) {
					html.append("<option value=" + entry.getKey() + ">" + entry.getValue() + "</option>");
				}
				if (html.toString().equals("")) {
					obj.put("value", "");
					obj.put("status", "invalid");
					out.print(obj);
				} else if (!html.toString().equals("")) {
					obj.put("topay", topayString[0]);
					obj.put("topaytrue", topayString[1]);
					obj.put("value", html.toString());
					obj.put("status", "valid");
					out.print(obj);
				}
			}
			
			String jonString="";
			Enumeration<String> params = request.getParameterNames(); 
			while(params.hasMoreElements()){
			 String paramName = params.nextElement();
			 jonString = paramName;
			 //System.out.println("Parameter Name - "+paramName+", Value - "+request.getParameter(paramName));
			}
			
			//String jsonString = request.getReader().lines().collect(Collectors.joining());
			JSONParser parser = new JSONParser();
			
			if(jonString != "") {
				JSONObject json = (JSONObject) parser.parse(jonString);
				JSONArray allowance = (JSONArray) json.get("allowance");
				JSONArray deduction = (JSONArray) json.get("deduction");
				String empSalmail = (String) json.get("generateSlipemails");
				String generateSlipsnames = (String) json.get("generateSlipsnames");
				String generateSlipBankSelect = (String) json.get("generateSlipBankSelect");
				String generateSalaryTextArea = (String) json.get("generateSalaryTextArea");
				String generateSalaryMonth = (String) json.get("generateSalaryMonth");
				
				double totalAllowances = 0;
				double totalDeductions = 0;

				for (int i = 0; i < allowance.size(); i++) {
					AllowanceDao allowanceDao = new AllowanceDao(conn);
					Allowance allowanceData = new Allowance();
					
					allowanceData = allowanceDao.getAllowanceById(Integer.parseInt((String) allowance.get(i)));
					
//						System.out.println(allowanceData.getAllowance());
					totalAllowances = totalAllowances + allowanceData.getAmount();
				}
				
				for (int i = 0; i < deduction.size(); i++) {
					Deduction deductionData = new Deduction();
					DeductionsDao deductionsDao = new DeductionsDao(conn);
					
					deductionData = deductionsDao.getDeductionById(Integer.parseInt((String) deduction.get(i)));
					
//						System.out.println(deductionData.getAmount());
					totalDeductions = totalDeductions + deductionData.getAmount();
				}
				
//					System.out.println(deduction + " " + allowance + " " + empSalmail + " " + generateSlipsnames + " "
//							+ generateSlipBankSelect + " " + generateSalaryTextArea + " " + generateSalaryMonth);
//					
				
				int lastItmId = CommonUtils.getLastItemID("allowance");
				String refID = CommonUtils.generateItemId(lastItmId, "PS000");
				
				conn.setAutoCommit(false);
				
				//get attendance data
				AttendanceDao attendanceDao = new AttendanceDao(conn);
				int total_hours = attendanceDao.getToalHoursPerMonth(generateSalaryMonth);
				
//					System.out.println("total hours: "+ total_hours);
				
				//get salary data
				double houtly_rate = 300;
				double ot_hr_rate = 500;
				
				//total calculations
				double total_sal =  0;
				if(total_hours > 160) {
					total_sal = (total_hours - 160) * ot_hr_rate + (160 * houtly_rate);
				}else {
					total_sal = total_hours * houtly_rate;
				}
				
				//get bank data
				Bank bankData = new Bank();
				BankDao bankDao = new BankDao(conn);
				
				bankData = bankDao.getBankDetails(Integer.parseInt(generateSlipBankSelect));
				
				String sql = "Insert into salary(reference, salAmount, email, notes, role, bank, acnum, acname, branch, formonth, date) values(?,?,?,?,?,?,?,?,?,?,?)";
				PreparedStatement preSt = conn.prepareStatement(sql);
				
				preSt.setString(1, refID);
				preSt.setDouble(2, total_sal);
				preSt.setString(3, empSalmail);
				preSt.setString(4, generateSalaryTextArea);
				preSt.setString(5, bankData.getRole());
				preSt.setString(6, bankData.getBank());
				preSt.setString(7, bankData.getAcno());
				preSt.setString(8, bankData.getAcname());
				preSt.setString(9, bankData.getBranch());
				preSt.setString(10, generateSalaryMonth);
				preSt.setString(11, CommonUtils.getCurrentDateTIme());

				int res = preSt.executeUpdate();
				conn.commit();
				
				if(res > 0)
				{
					System.out.println("success");
					obj.put("status", "valid");
					out.print(obj);
				}else {
					System.out.println("error");
					obj.put("status", "invalid");
					out.print(obj);
				}
				
			}
	

		} catch (Exception e) {
			// TODO: handle exception
		}

		doGet(request, response);
	}

}
