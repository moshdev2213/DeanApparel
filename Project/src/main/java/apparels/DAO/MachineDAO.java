package apparels.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import apparels.Modal.Machine;
import apparels.Modal.User;

public class MachineDAO {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;

	java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
	
	public MachineDAO(Connection con) {
		this.con = con;
	}
	

	// to get all Machines from the DB
	public List<Machine> getMachines() {
		List<Machine> user = new ArrayList<Machine>();
		try {
			query = "select id,modified,DATE_FORMAT(added,'%b %r %D') as added,mcolor,mhandler,mmodel,mname,mcondition from machine";
			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			while (rs.next()) {
				Machine machine = new Machine();

				machine.setId(rs.getInt("id"));
				machine.setMname(rs.getString("mname"));
				machine.setMmodel(rs.getString("mmodel"));
				machine.setMhandler(rs.getString("mhandler"));
				machine.setMcolor(rs.getString("mcolor"));
				machine.setAdded(rs.getString("added"));
				machine.setModify(rs.getString("modified"));
				machine.setMcondition(rs.getString("mcondition"));
				
				user.add(machine);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;

	}
	
	
	public Machine machimeById(int id) {
		Machine machine  = new Machine();
		try {
			query = "select id,modified,DATE_FORMAT(added,'%b %r %D') as added,mcolor,mhandler,mmodel,mname,mcondition from machine where id=?";
//			query = "select * from machine where id=?";
			pst = this.con.prepareStatement(query);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			if (rs.next()) {

				machine.setId(rs.getInt("id"));
				machine.setMname(rs.getString("mname"));
				machine.setMmodel(rs.getString("mmodel"));
				machine.setMhandler(rs.getString("mhandler"));
				machine.setMcolor(rs.getString("mcolor"));
				machine.setAdded(rs.getString("added"));
				machine.setModify(rs.getString("modified"));
				machine.setMcondition(rs.getString("mcondition"));
				
			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return machine;
	}
	
	public boolean insertMachine(String mname, String mmodel, String mhandler, String mcolor,String mcond) {
		boolean result = false;
		try {
			query = "Insert into machine (mname,mmodel,mhandler,mcolor,mcondition) values(?,?,?,?,?)";
			pst = this.con.prepareStatement(query);

			pst.setString(1, mname);
			pst.setString(2, mmodel);
			pst.setString(3, mhandler);
			pst.setString(4, mcolor);
			pst.setString(5, mcond);
			
			pst.executeUpdate();
			result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}
	
	// update the card info
		public boolean updateMachine(String mname, String mmodel, String mhandler, String mcolor,String mcond,int id) {
			boolean result = false;
			try {
				query = "UPDATE machine SET  mname=?, mmodel=?, mhandler=?,mcolor=?, mcondition=?,modified=? WHERE id = ?;";
				pst = this.con.prepareStatement(query);

				pst.setString(1, mname);
				pst.setString(2, mmodel);
				pst.setString(3, mhandler);
				pst.setString(4, mcolor);
				pst.setTimestamp(6, date);
				pst.setString(5, mcond);
				pst.setInt(7, id);

				pst.executeUpdate();
				result =  true;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return result;
		}
		// ends
		
		// delete the card
		public boolean deleteMachine(int Id) {
			boolean result = false;
			try {
				query = "DELETE FROM machine WHERE id=?;";
				pst = this.con.prepareStatement(query);

				pst.setInt(1, Id);

				pst.executeUpdate();
				result =  true;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return result;

		}
		// ends
}
