package apparels.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import apparels.Modal.Deduction;

public class DeductionsDao {
	
	private Connection con;
	private String query, query_role;
	private PreparedStatement pst, pst_role;
	private ResultSet rs, rs_role;

	java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());

	public DeductionsDao(Connection con) {
		this.con = con;
	}

	public List<Deduction> getAllDeductions() {
		List<Deduction> allowancesList = new ArrayList<Deduction>();

		try {
			query = "SELECT * FROM deduction";

			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			while (rs.next()) {
				Deduction obj = new Deduction();
				
				obj.setId(rs.getInt("id"));
				obj.setReference(rs.getString("reference"));
				obj.setDeduction(rs.getString("deduction"));
				obj.setAmount(rs.getDouble("amount"));
				obj.setDescription(rs.getString("description"));
				obj.setDate(rs.getString("date"));
				
				String role_Id = rs.getString("roleId");
				query_role = "SELECT * FROM role WHERE roleId ="+role_Id;

				pst_role = this.con.prepareStatement(query_role);
				rs_role = pst_role.executeQuery();
				
				String r_name = "";
				while(rs_role.next()) {
					r_name = rs_role.getString("role");
				}
				obj.setRoleName(r_name);

				allowancesList.add(obj);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return allowancesList;

	}
	
	public Deduction getDeductionById(int id) {
		Deduction obj = new Deduction();

		try {
			query = "SELECT * FROM deduction WHERE id='"+id+"'";

			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			while (rs.next()) {
				
				obj.setId(rs.getInt("id"));
				obj.setReference(rs.getString("reference"));
				obj.setDeduction(rs.getString("deduction"));
				obj.setAmount(rs.getDouble("amount"));
				obj.setDescription(rs.getString("description"));
				obj.setDate(rs.getString("date"));
				
				String role_Id = rs.getString("roleId");
				query_role = "SELECT * FROM role WHERE roleId ="+role_Id;

				pst_role = this.con.prepareStatement(query_role);
				rs_role = pst_role.executeQuery();
				
				String r_name = "";
				while(rs_role.next()) {
					r_name = rs_role.getString("role");
				}
				obj.setRoleName(r_name);


			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return obj;

	}

}

