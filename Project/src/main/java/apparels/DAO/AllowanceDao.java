package apparels.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import apparels.Modal.Allowance;

public class AllowanceDao {
	private Connection con;
	private String query, query_role;
	private PreparedStatement pst, pst_role;
	private ResultSet rs, rs_role;

	java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());

	public AllowanceDao(Connection con) {
		this.con = con;
	}

	// Selecting all of the Allowances
	public List<Allowance> getAllAllowances() {
		List<Allowance> allowancesList = new ArrayList<Allowance>();

		try {
			query = "SELECT * FROM allowance";

			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			while (rs.next()) {
				Allowance allowObj = new Allowance();
				
				allowObj.setId(rs.getInt("id"));
				allowObj.setReference(rs.getString("reference"));
				allowObj.setAllowance(rs.getString("allowance"));
				allowObj.setAmount(rs.getDouble("amount"));
				allowObj.setDescription(rs.getString("description"));
				allowObj.setDate(rs.getString("date"));
				
				String role_Id = rs.getString("roleId");
				query_role = "SELECT * FROM role WHERE roleId ="+role_Id;

				pst_role = this.con.prepareStatement(query_role);
				rs_role = pst_role.executeQuery();
				
				String r_name = "";
				while(rs_role.next()) {
					r_name = rs_role.getString("role");
				}
				allowObj.setRoleName(r_name);

				allowancesList.add(allowObj);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return allowancesList;

	}
	
	public Allowance getAllowanceById(int id) {
		
		Allowance allowObj = new Allowance();

		try {
			query = "SELECT * FROM allowance WHERE id='"+id+"'";

			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			while (rs.next()) {
				
				allowObj.setId(rs.getInt("id"));
				allowObj.setReference(rs.getString("reference"));
				allowObj.setAllowance(rs.getString("allowance"));
				allowObj.setAmount(rs.getDouble("amount"));
				allowObj.setDescription(rs.getString("description"));
				allowObj.setDate(rs.getString("date"));
				
				String role_Id = rs.getString("roleId");
				query_role = "SELECT * FROM role WHERE roleId ="+role_Id;

				pst_role = this.con.prepareStatement(query_role);
				rs_role = pst_role.executeQuery();
				
				String r_name = "";
				while(rs_role.next()) {
					r_name = rs_role.getString("role");
				}
				allowObj.setRoleName(r_name);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return allowObj;

	}

}
