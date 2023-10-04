package apparels.DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import apparels.Modal.*;

public class CartDao {
	private Connection con;

	private String query;
	private PreparedStatement pst;
	private ResultSet rs;

	public CartDao(Connection con) {
		super();
		this.con = con;
	}

	public boolean inserttoCart(String email, int pid) {
		boolean result = false;
		try {
			query = "insert into cart (email, pid) values(?,?)";
			pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			pst.setInt(2, pid);

			pst.executeUpdate();
			result = true;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return result;
	}

	public List<Cart> fetchCart(String email) {
		List<Cart> list = new ArrayList<>();
		try {
			query = "SELECT p.product_ID,p.mimg,p.name,p.price \r\n"
					+ "FROM cart c,product p\r\n"
					+ "where c.pid=p.product_ID and c.email =?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			rs = pst.executeQuery();
			while (rs.next()) {
				Cart crt = new Cart();
				crt.setName(rs.getString("name"));
				crt.setPrice(rs.getDouble("price"));
				crt.setThumbnail(rs.getString("mimg"));
				crt.setId(rs.getInt("product_Id"));
				list.add(crt);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return list;
	}

	public int fetchitem(int id ,String email) {
		int result = 0;
		try {
			query = "select * from cart where pid=? and email=?";
			pst = this.con.prepareStatement(query);
			pst.setInt(1, id);
			pst.setString(2,email);
			rs = pst.executeQuery();
			if (rs.next()) {
				result = 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		return result;
	}
	
	public int cartquantity(String email) {
		int result = 0;
		try {
			query = "SELECT count(id) as count FROM cart where email=?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			rs = pst.executeQuery();
			while(rs.next()) {
				result = rs.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		System.out.println(result);
		return result;
	}

	public void removeitem(int id,String email) {
//		boolean result = false;
		try {
			query = "delete from cart where pid=? and email=?";
			pst = this.con.prepareStatement(query);
			pst.setInt(1, id);
			pst.setString(2,email);
			pst.executeUpdate();
			System.out.println("Deleted");
//			result = true;
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
//		return result;
	}
}
