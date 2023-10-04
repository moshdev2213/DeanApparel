package apparels.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import apparels.Modal.Card;
import apparels.Modal.Employee;

public class SalaryMDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;

	java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());

	public SalaryMDao(Connection con) {
		this.con = con;
	}

	// selecting all of the employees
	public List<Employee> getAllEmployee() {
		List<Employee> crd = new ArrayList<Employee>();

		try {
			query = "SELECT * FROM employee WHERE actstatus='active'";

			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			while (rs.next()) {
				Employee cd = new Employee();

				cd.setId(rs.getInt("emp_id"));
				cd.setName(rs.getString("emp_name"));
				cd.setDob(rs.getString("emp_DOB"));
				cd.setTel(rs.getString("emp_tel"));
				cd.setStatus(rs.getString("emp_status"));
				cd.setEmail(rs.getString("emp_email"));
				cd.setDepartment(rs.getString("department"));
				cd.setDesignation(rs.getString("designation"));
				cd.setCategory(rs.getString("empCat"));
				cd.setCoverpic(rs.getString("coverpic"));
				cd.setPropic(rs.getString("profilepic"));
				cd.setMarital(rs.getString("marital"));
				cd.setResignation(rs.getString("resignation"));
				cd.setBasicsal(rs.getDouble("basicsalary"));
				cd.setEmpjoin(rs.getString("emp_join"));
				cd.setEmpresign(rs.getString("emp_resign"));
				cd.setActstatus(rs.getString("actstatus"));

				crd.add(cd);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return crd;

	}

	// Hashmap for the bank account of the employee
	public HashMap<Integer, String> getALLBankAccounts(String email) {
		HashMap<Integer, String> district = new HashMap<Integer, String>();

		try {
			String bname = null;
			String bacct = null;
			int bid = 0;

			query = "SELECT * FROM bankac where email =?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			rs = pst.executeQuery();
			while (rs.next()) {
				bname = rs.getString("bank");
				bacct = rs.getString("acno");
				bid = rs.getInt("id");

				district.put(bid, bname.toUpperCase() + " BANK---AC NO:" + bacct);
			}

			return district;
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return district;
	}
	// ends here

	// Hashmap for the paslip count of the employee
	public HashMap<Integer, String> getALLPaySlips(String email) {
		HashMap<Integer, String> district = new HashMap<Integer, String>();

		try {
			String joined = null;
			String designation = null;
			String mail = null;
			String dayz = null;
			int empid = 0;
			int sid = 0;

			query = "select DATE_FORMAT(e.emp_join,'%b %D %Y') as joined ,e.designation,e.emp_id, s.email,DATE_FORMAT(s.formonth,'%b %D %Y') as dayz,s.id \r\n"
					+ "from salary s,employee e \r\n" + "where s.email=e.emp_email and s.email=?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			rs = pst.executeQuery();
			while (rs.next()) {
				joined = rs.getString("joined");
				designation = rs.getString("designation");
				dayz = rs.getString("dayz");
				empid = rs.getInt("emp_id");
				mail = rs.getString("email");
				sid = rs.getInt("id");
				
				
				
				district.put(sid, joined+"  "+designation+"  "+dayz+"  "+empid+"  "+mail);
			}

			return district;
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return district;
	}
	// ends here

	// fetches the deduction
	public HashMap<Integer, String> getAllDeductions(String roleId) {
		HashMap<Integer, String> district = new HashMap<Integer, String>();

		try {
			String name = null;
			int id = 0;

			query = "SELECT * FROM deduction WHERE roleid = '"+roleId+"';";
			pst = this.con.prepareStatement(query);

			rs = pst.executeQuery();
			while (rs.next()) {
				name = rs.getString("deduction");

				id = rs.getInt("id");

				district.put(id, name.toUpperCase());
			}

			return district;
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return district;
	}
	// end here

	// fetches the allowance
	public HashMap<Integer, String> getAllAllowances(String roleId) {
		HashMap<Integer, String> dataArr = new HashMap<Integer, String>();

		try {
			String name = null;
			int id = 0;

			query = "SELECT * FROM allowance WHERE roleid = '"+roleId+"';";
			pst = this.con.prepareStatement(query);

			rs = pst.executeQuery();
			while (rs.next()) {
				name = rs.getString("allowance");

				id = rs.getInt("id");

				dataArr.put(id, name.toUpperCase());
			}

			return dataArr;
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return dataArr;
	}
	// ends here

	// inserting into the notifications table
	public int EmpNotification(String message, String bythe, String tothe, String role) {
		int result = 0;
		try {
			query = "INSERT INTO notification (message,bythe,tothe,role) VALUES (?,?,?,?)";
			pst = this.con.prepareStatement(query);

			pst.setString(1, message);
			pst.setString(2, bythe);
			pst.setString(3, tothe);
			pst.setString(4, role);

			result = pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	// ends here

	// selecting the notifications that are not seen by employee
	public int[] GetUnSeenNotifications(String email) {
		int[] id = { 0, 0 };
		try {
			query = "SELECT DATEDIFF(CURDATE(), date) AS days,id FROM notification WHERE seen=0 and tothe=?";

			pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			rs = pst.executeQuery();

			while (rs.next()) {
				id[0] = rs.getInt("id");
				id[1] = rs.getInt("days");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;

	}
	// ends here

	// selecting the months to be paid for the salary
	public String[] GetUnPaidSalaryDates(String email) {
		String[] id = { "", "" };
		try {
			query = "SELECT date_format( DATE_ADD(formonth, INTERVAL 1 MONTH), '%Y-%m') as topay ,if (date_format( DATE_ADD(formonth, INTERVAL 1 MONTH), '%Y-%m-01')>curdate(),'true','false' ) as topaytrue FROM salary where email=? order by id desc";

			pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			rs = pst.executeQuery();

			while (rs.next()) {
				id[0] = rs.getString("topay");
				id[1] = rs.getString("topaytrue");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;

	}
	// ends here

		
	//for the header section of the Payslip
	public ArrayList<String> getPaySlipHeader(String sid,String email) {
		ArrayList<String> heads = new ArrayList<String>();
		
		try {
			query = "select  e.emp_name as name , e.designation , e.emp_id ,DATE_FORMAT(e.emp_join, \"%D %b %Y\") as joined,s .reference , DATE_FORMAT(formonth,'%M %Y') as smonth , e.basicsalary,s.salAmount as totalsalary  \r\n"
					+ "from salary s,roleallowance ra, rolededuction rd ,employee e\r\n"
					+ "where s.email = e.emp_email and s.email=ra.email and rd.email=s.email and s.id=? and s.email =? \r\n"
					+ "LIMIT 1;";
			pst = this.con.prepareStatement(query);
			pst.setString(1, sid);
			pst.setString(2, email);
			rs = pst.executeQuery();
			while (rs.next()) {
				
				heads.add(0,rs.getString("name"));
				heads.add(1,rs.getString("designation"));
				heads.add(2,rs.getString("emp_id"));
				heads.add(3,rs.getString("joined"));
				heads.add(4,rs.getString("reference"));
				heads.add(5,rs.getString("smonth"));
				heads.add(6,rs.getString("basicsalary"));
				heads.add(7,rs.getString("totalsalary"));
			}
		
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return heads;
	
		
	}
	//ebds here
}
