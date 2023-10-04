package apparels.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import apparels.Modal.Role;

public class RoleDao {
	private Connection con;
	private String query, query_role;
	private PreparedStatement pst, pst_role;
	private ResultSet rs, rs_role;

	java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());

	public RoleDao(Connection con) {
		this.con = con;
	}

	public List<Role> getAllRoles() {
		List<Role> rolesList = new ArrayList<Role>();

		try {
			query = "SELECT * FROM role";

			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			while (rs.next()) {
				Role roleObj = new Role();
				
				roleObj.setRoleId(rs.getInt("roleId"));
				roleObj.setRole(rs.getString("role"));
				roleObj.setAdded(rs.getString("added"));

				rolesList.add(roleObj);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rolesList;

	}

}

