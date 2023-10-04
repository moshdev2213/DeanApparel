package apparels.DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import apparels.Modal.LogTime;
import apparels.Modal.RegTime;

public class RegTimeDao {

	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;

	public RegTimeDao(Connection con) {
		this.con = con;
	}

	public boolean insertlogs(String email,String date,String time,String day,String month) {
		boolean result = false;

		try {
			query = "Insert into regtime (uemail,time,day,month,date) values(?,?,?,?,?)";
			pst = this.con.prepareStatement(query);

			pst.setString(1, email);
			pst.setString(2, time);
			pst.setString(3, day);
			pst.setString(4, month);
			pst.setString(5, date);

			pst.executeUpdate();
			result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}


}
