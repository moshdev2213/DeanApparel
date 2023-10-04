package apparels.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import apparels.Modal.Bank;
import apparels.Modal.Employee;

public class BankDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;

	java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());

	public BankDao(Connection con) {
		this.con = con;
	}

	public Bank getBankDetails(int bankId) {
		Bank bank = new Bank();

		try {
			query = "SELECT * FROM bankac WHERE id='"+bankId+"'";

			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			while (rs.next()) {
				bank.setId(rs.getInt("id"));
				bank.setBank(rs.getString("bank"));
				bank.setAcno(rs.getString("acno"));
				bank.setAcname(rs.getString("acname"));
				bank.setEmail(rs.getString("email"));
				bank.setBranch(rs.getString("branch"));
				bank.setRole(rs.getString("role"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bank;

	}
}
