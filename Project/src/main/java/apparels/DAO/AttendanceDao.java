package apparels.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import apparels.Modal.Attendance;
import apparels.Modal.Deduction;
import apparels.Modal.Employee;

public class AttendanceDao {

	private Connection con;
	private String query, query_role;
	private PreparedStatement pst, pst_role;
	private ResultSet rs, rs_role;

	java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());

	public AttendanceDao(Connection con) {
		this.con = con;
	}
	
	public int getToalHoursPerMonth(String date) {
		int total_hours = 0;	
		
		String[] arrOfStr = date.split("-");
		String year = arrOfStr[0];
		String month = arrOfStr[1];
		
		try {
			query = "SELECT * FROM atdc WHERE MONTH(punchIn) = '"+month+"' AND YEAR(punchIn) = '"+year+"'";

			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			while (rs.next()) {
				String hours_string = rs.getString("wrkHrs");
				String[] arrOfStr2 = hours_string.split(":");
				
				int tot_hrs = Integer.parseInt(arrOfStr2[0]);
				total_hours = total_hours + tot_hrs;
				System.out.println(total_hours);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return total_hours;

	}
	
}
