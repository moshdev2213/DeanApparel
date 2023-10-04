package apparels.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import apparels.Modal.Card;
import apparels.Modal.Product;
import apparels.Modal.Review;
import apparels.Modal.UserAddress;

public class CusProfileDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;

	java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());

	public CusProfileDao(Connection con) {
		this.con = con;
	}

	// select Card Info From the id
	public Card getCardById(String id) {
		Card cd = null;
		try {
			query = "SELECT id,name,cnum,expire,cvc,ctype,added from paycard where id=?";

			pst = this.con.prepareStatement(query);
			pst.setString(1, id);
			rs = pst.executeQuery();
			while (rs.next()) {
				cd = new Card();

				cd.setId(rs.getInt("id"));
				cd.setCname(rs.getString("name"));
				cd.setCnum(rs.getString("cnum"));
				cd.setCexpire(rs.getString("expire"));
				cd.setCvc(rs.getString("cvc"));
				cd.setCtype(rs.getString("ctype"));
				cd.setDate(rs.getString("added"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cd;

	}
	// ends here

	// select if exist cards details
	public int checkCardinfo(String email, String cnum) {
		int id = 0;
		try {
			query = "SELECT id from paycard where email=? and cnum=? ";

			pst = this.con.prepareStatement(query);

			pst.setString(1, email);

			pst.setString(2, cnum);

			rs = pst.executeQuery();
			while (rs.next()) {
				id = rs.getInt("id");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;

	}
	// ends

	// selecting cards details
	public List<Card> getCardinfo(String email, String role) {
		List<Card> crd = new ArrayList<Card>();

		try {
			query = "SELECT id,name,cnum,expire,cvc,ctype,added from paycard where email=? and role=? order by id desc";

			pst = this.con.prepareStatement(query);

			pst.setString(1, email);
			pst.setString(2, role);

			rs = pst.executeQuery();
			while (rs.next()) {
				Card cd = new Card();

				cd.setId(rs.getInt("id"));
				cd.setCname(rs.getString("name"));
				cd.setCnum(rs.getString("cnum"));
				cd.setCexpire(rs.getString("expire"));
				cd.setCvc(rs.getString("cvc"));
				cd.setCtype(rs.getString("ctype"));

				cd.setDate(rs.getString("added"));

				crd.add(cd);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return crd;

	}

	//

	// inserting new cards for the user
	public int InsertCardinfo(String name, String cnum, String expire, String cvc, String ctype, String email,
			String role) {
		int result = 0;
		try {
			query = "INSERT INTO paycard (name,cnum,expire,cvc,ctype,email,role)\r\n" + "VALUES (?,?,?,?,?,?,?);";
			pst = this.con.prepareStatement(query);

			pst.setString(1, name);
			pst.setString(2, cnum);
			pst.setString(3, expire);
			pst.setString(4, cvc);
			pst.setString(5, ctype);
			pst.setString(6, email);
			pst.setString(7, role);

			result = pst.executeUpdate();
			System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	// ends here

	// update the card info
	public int updateCard(String name, String cvc, String expire, int id) {
		int result = 0;
		try {
			query = "UPDATE paycard\r\n" + "SET  name=?, cvc=?, expire=?, modify=?\r\n" + "WHERE id = ?;";
			pst = this.con.prepareStatement(query);

			pst.setString(1, name);
			pst.setString(2, cvc);
			pst.setString(3, expire);
			pst.setTimestamp(4, date);
			pst.setInt(5, id);

			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	// ends

	// delete the card
	public int deleteCard(int Id, String email) {
		int result = 0;
		try {
			query = "DELETE FROM paycard WHERE id=? and email=?";
			pst = this.con.prepareStatement(query);

			pst.setInt(1, Id);
			pst.setString(2, email);

			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}
	// ends

	// select the payment details
	public List<Card> getpaymentinfo(String email) {
		List<Card> crd = new ArrayList<Card>();

		try {
			query = "SELECT DATE_FORMAT(p.date,'%b %r %D') as dayz ,o.status,p.total FROM payment p,orders o WHERE  p.payment_ID = o.paymentid and o.useremail=?";

			pst = this.con.prepareStatement(query);

			pst.setString(1, email);

			rs = pst.executeQuery();
			while (rs.next()) {
				Card cd = new Card();

				cd.setDate(rs.getString("dayz"));
				cd.setStatus(rs.getString("status"));
				cd.setPayments(rs.getDouble("total"));

				crd.add(cd);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return crd;

	}
	// ends here

	// checks all credentials wanted for the updateProces
	public int checkCardByAll(String email, String cnum, String cname, String cholder, String csv) {
		int id = 0;
		try {
			query = "SELECT id from paycard where email=? and cnum=? and ctype=? and name=? and cvc=?";

			pst = this.con.prepareStatement(query);

			pst.setString(1, email);
			pst.setString(2, cnum);
			pst.setString(3, cname);
			pst.setString(4, cholder);
			pst.setString(5, csv);

			rs = pst.executeQuery();
			while (rs.next()) {
				id = rs.getInt("id");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;

	}
	// ends here

	// to get all user addreses from the DB by email
	public List<UserAddress> getUserAddresses(String email) {
		List<UserAddress> user = new ArrayList<UserAddress>();
		try {
			query = "select * from address where email=?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			rs = pst.executeQuery();
			while (rs.next()) {
				UserAddress usr = new UserAddress();

				usr.setaId(rs.getInt("address_ID"));
				usr.setProvinceId(rs.getString("province_ID"));
				usr.setDistrictId(rs.getString("district_ID"));
				usr.setSrteet(rs.getString("street"));
				usr.setPostalCode(rs.getInt("postal_code"));
				usr.setCity(rs.getString("city"));
				usr.setEmail(rs.getString("email"));
				usr.setRole(rs.getString("role"));
				usr.setAddressOf(rs.getString("addressof"));
				usr.setAddedDate(rs.getString("added"));
				usr.setUpdatedDate(rs.getString("modified"));

				user.add(usr);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;

	}
	// ends here

	// to get all user addreses from the DB by email and email
	public UserAddress getUserAddresses(String email, int aid) {
		UserAddress usr = new UserAddress();
		try {
			query = "select * from address where email=? and address_ID=?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			pst.setInt(2, aid);
			rs = pst.executeQuery();
			while (rs.next()) {

				usr.setaId(rs.getInt("address_ID"));
				usr.setProvinceId(rs.getString("province_ID"));
				usr.setDistrictId(rs.getString("district_ID"));
				usr.setSrteet(rs.getString("street"));
				usr.setPostalCode(rs.getInt("postal_code"));
				usr.setCity(rs.getString("city"));
				usr.setEmail(rs.getString("email"));
				usr.setRole(rs.getString("role"));
				usr.setAddressOf(rs.getString("addressof"));
				usr.setAddedDate(rs.getString("added"));
				usr.setUpdatedDate(rs.getString("modified"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return usr;

	}
	// ends here

	// delete the address
	public int deleteAddress(int Id, String email) {
		int result = 0;
		try {
			query = "DELETE FROM address WHERE address_ID=? and email=?";
			pst = this.con.prepareStatement(query);

			pst.setInt(1, Id);
			pst.setString(2, email);

			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}
	// ends

	// insert the address
	public int insertAddress(String pId, String dId, String street, int postal, String city, String email, String role,
			String addressof) {
		int result = 0;
		try {
			query = "INSERT INTO address (province_ID,district_ID,street,postal_code,city,email,role,addressof)\r\n"
					+ "VALUES (?,?,?,?,?,?,?,?);";
			pst = this.con.prepareStatement(query);

			pst.setString(1, pId);
			pst.setString(2, dId);
			pst.setString(3, street);
			pst.setInt(4, postal);
			pst.setString(5, city);
			pst.setString(6, email);
			pst.setString(7, role);
			pst.setString(8, addressof);

			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}
	// ends

	// update the address info
	public int updateAddress(String province_ID, String district_ID, String street, int postal_code, String city,
			String addressOf, int aid) {
		int result = 0;
		try {
			query = "UPDATE address SET  province_ID=?, district_ID=?, street=?, postal_code=?, city=?,addressof=?,modified=? WHERE address_ID = ?;";
			pst = this.con.prepareStatement(query);
			Timestamp currentTime = new Timestamp(date.getTime());

			pst.setString(1, province_ID);
			pst.setString(2, district_ID);
			pst.setString(3, street);
			pst.setInt(4, postal_code);
			pst.setString(5, city);
			pst.setString(6, addressOf);
			pst.setTimestamp(7, currentTime);
			pst.setInt(8, aid);

			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	// ends

	// update the userPassword info
	public int userPasswordChange(String email, String newpass) {
		int result = 0;
		try {
			query = "UPDATE users SET  password=?,modified=? WHERE useremail = ?;";
			pst = this.con.prepareStatement(query);
			Timestamp currentTime = new Timestamp(date.getTime());

			pst.setString(1, newpass);
			pst.setTimestamp(2, currentTime);
			pst.setString(3, email);

			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	// ends
	
	// update the userAccount Status info
		public int userActStatusChange(String email) {
			int result = 0;
			try {
				query = "UPDATE users SET  account=?,actdlt=? WHERE useremail = ?;";
				pst = this.con.prepareStatement(query);
				Timestamp currentTime = new Timestamp(date.getTime());

				pst.setString(1, "deactivate");
				pst.setTimestamp(2, currentTime);
				pst.setString(3, email);

				result = pst.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return result;
		}
		// ends
}