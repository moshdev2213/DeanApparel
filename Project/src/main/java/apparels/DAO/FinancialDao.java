package apparels.DAO;

import java.sql.*;

import java.util.ArrayList;
import java.util.List;

import apparels.Modal.*;

public class FinancialDao {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;

	public FinancialDao(Connection con) {
		this.con = con;
	}
	
	
	public List<CusFinancial> getFinance(){
		List<CusFinancial> financial = new ArrayList<CusFinancial>(); 
		try {
			query="SELECT * FROM payment";
			pst=this.con.prepareStatement(query);
			rs=pst.executeQuery();
			while(rs.next()) {
				CusFinancial usr = new CusFinancial();
				
				usr.setPayment_id(rs.getInt("payment_ID"));
				usr.setCnumber(rs.getString("cnumber"));
				usr.setDate(rs.getString("date"));
				usr.setTotal(rs.getDouble("total"));
				usr.setUsermail(rs.getString("useremail"));
				usr.setSubtotal(rs.getDouble("subtotal"));
				
				
				financial.add(usr);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return financial;
		
	}
	//////////////////
}