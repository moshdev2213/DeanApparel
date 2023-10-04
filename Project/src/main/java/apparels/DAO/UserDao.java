package apparels.DAO;

import java.sql.*;

import java.util.ArrayList;
import java.util.List;

import apparels.Modal.*;

public class UserDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	java.util.Date sysdate = new java.util.Date();
	public UserDao(Connection con) {
		this.con = con;
	}

	public User userLogin(String email, String password) {
		User user = null;
		try {
			query = "select * from users where useremail=? and password=? and account=?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2, password);
			pst.setString(3, "active");
			rs = pst.executeQuery();
			if (rs.next()) {
				user = new User();

				user.setTel(rs.getString("phone_no"));
				user.setEmail(rs.getString("useremail"));
				user.setPassword(rs.getString("password"));
				user.setPropic(rs.getString("propic"));
				user.setCoverpic(rs.getString("coverpic"));
				user.setAbout(rs.getString("about"));
				user.setFname(rs.getString("fname"));
				user.setMname(rs.getString("mname"));
				user.setLname(rs.getString("lname"));
				user.setUsername(rs.getString("username"));
				user.setCompany(rs.getString("company"));
			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return user;
	}

	// getting by email
	public User userbymail(String email) {
		User user = null;
		try {
			query = "select * from users where useremail=?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			rs = pst.executeQuery();
			if (rs.next()) {
				user = new User();

				user.setTel(rs.getString("phone_no"));
				user.setEmail(rs.getString("useremail"));
				user.setPassword(rs.getString("password"));
				user.setPropic(rs.getString("propic"));
				user.setCoverpic(rs.getString("coverpic"));
				user.setAbout(rs.getString("about"));
				user.setFname(rs.getString("fname"));
				user.setMname(rs.getString("mname"));
				user.setLname(rs.getString("lname"));
				user.setUsername(rs.getString("username"));
				user.setCompany(rs.getString("company"));
			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return user;
	}

	public boolean userRegister(String fname, String lname, String username, String tel, String password,
			String email) {
		boolean result = false;
		try {
			query = "Insert into users (useremail,password,username,phone_no,fname,lname,regdate) values(?,?,?,?,?,?,?)";
			pst = this.con.prepareStatement(query);

			pst.setString(1, email);
			pst.setString(2, password);
			pst.setString(3, username);
			pst.setString(4, tel);
			pst.setString(5, fname);
			pst.setString(6, lname);
			
			Timestamp currentTime = new Timestamp(sysdate.getTime());
			pst.setTimestamp(7, currentTime);
			
			pst.executeUpdate();
			result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}

	// user admin register
	public boolean useFull(String fname, String lname, String mname, String username, String tel, String company,
			String password, String email, int address, String cover, String pro, String about) {
		boolean result = false;
		try {
			query = "Insert into users (useremail,password,username,phone_no,company,fname,mname,lname,address_ID,propic,coverpic) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			pst = this.con.prepareStatement(query);

			pst.setString(1, email);
			pst.setString(2, password);
			pst.setString(3, username);
			pst.setString(4, tel);
			pst.setString(5, company);
			pst.setString(6, fname);
			pst.setString(7, mname);
			pst.setString(8, lname);
			pst.setInt(9, address);
			pst.setString(10, cover);
			pst.setString(11, pro);
			pst.setString(12, about);

			pst.executeUpdate();
			result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}

	// user admin register
	public boolean updateuser(String fname, String lname, String mname, String username, String tel, String company,
			String password, String email, String cover, String pro, String about) {
		boolean result = false;
		try {
			query = "update users set password=?,username=?,phone_no=?,company=?,fname=?,mname=?,lname=?,propic=?,coverpic=?,about=? where useremail=?";
			pst = this.con.prepareStatement(query);

			pst.setString(1, password);
			pst.setString(2, username);
			pst.setString(3, tel);
			pst.setString(4, company);
			pst.setString(5, fname);
			pst.setString(6, mname);
			pst.setString(7, lname);
			pst.setString(8, pro);
			pst.setString(9, cover);
			pst.setString(10, about);
			pst.setString(11, email);

			pst.executeUpdate();
			result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}

	// to get all users from the DB
	public List<User> getUser() {
		List<User> user = new ArrayList<User>();
		try {
			query = "select * from users";
			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			while (rs.next()) {
				User usr = new User();

				usr.setTel(rs.getString("phone_no"));
				usr.setEmail(rs.getString("useremail"));
				usr.setPassword(rs.getString("password"));
				usr.setPropic(rs.getString("propic"));
				usr.setCoverpic(rs.getString("coverpic"));
				usr.setAbout(rs.getString("about"));
				usr.setFname(rs.getString("fname"));
				usr.setMname(rs.getString("mname"));
				usr.setLname(rs.getString("lname"));
				usr.setUsername(rs.getString("username"));
				usr.setCompany(rs.getString("company"));

				user.add(usr);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;

	}
	
	
}