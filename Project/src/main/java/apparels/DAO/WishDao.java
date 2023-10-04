package apparels.DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import apparels.Modal.WhishList;

public class WishDao {
	private Connection con;

	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	
	
	public WishDao(Connection con) {
		super();
		this.con = con;
	}
	
	public boolean inserttoWish(String email, int pid) {
		boolean result = false;
		try {
			query = "insert into wishlist (email, pid) values(?,?)";
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

	public List<WhishList> fetchWish(String email) {
		List<WhishList> list = new ArrayList<>();
		try {
			query = "SELECT p.product_ID,p.mimg,p.name,p.price \r\n"
					+ "FROM wishlist w,product p\r\n"
					+ "where w.pid=p.product_ID and w.email =?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			rs = pst.executeQuery();
			while (rs.next()) {
				WhishList crt = new WhishList();
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

	public int fetchitem(int id,String email) {
		int result = 0;
		try {
			query = "select * from wishlist where pid=? and email=?";
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
	
	public int wishquantity(String email) {
		int result = 0;
		try {
			query = "SELECT count(id) as count FROM wishlist where email=?";
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
			query = "delete from wishlist where pid=? and email=?";
			pst = this.con.prepareStatement(query);
			pst.setInt(1, id);
			pst.setString(2,email);
			pst.executeUpdate();
			System.out.println("Deleted From Wishlist");
//			result = true;
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
//		return result;
	}
}
