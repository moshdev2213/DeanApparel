package apparels.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import apparels.Modal.Product;

public class CouponsDao {
	
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;

	public CouponsDao(Connection con) {
		this.con = con;
	}
	
	//checks the coupon and sends the cpn value
	public int getCoupon(String cpn) {
		int value=0;
		try {
			query = "SELECT c.value \r\n"
					+ "FROM coupon c\r\n"
					+ "WHERE c.coupon=?";
			
			pst = this.con.prepareStatement(query);
			pst.setString(1, cpn);
			rs = pst.executeQuery();
			while (rs.next()) {
				value = rs.getInt("value");
			
			}
		} catch (Exception e) {
			
		}
		
		return value;
		
	}

}
