package apparels.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import apparels.Modal.Order;

public class OrderDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;

	java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());

	public OrderDao(Connection con) {
		this.con = con;
	}

	// for the default orderpage
	public List<Order> getOrderList(String email) {
		List<Order> order = new ArrayList<Order>();

		try {
			query = "SELECT o.order_ID, p.product_ID,i.unique_ID as invoice,datediff(DATE_ADD((o.date), INTERVAL 36457 MINUTE),now()) as diff,DATE_FORMAT(o.date,'%d %b %Y %r') as dayz,DATE_FORMAT(o.date,'%d %b %r') as placed ,DATE_FORMAT(( DATE_ADD((o.date), INTERVAL 15789 MINUTE)),'%d %b %r') as confirm,DATE_FORMAT(( DATE_ADD((o.date), INTERVAL 26930 MINUTE)),'%d %b %r') as courier,DATE_FORMAT(( DATE_ADD((o.date), INTERVAL 36457 MINUTE)),'%d %b %r') as done ,o.color,p.mimg,p.name as pname,o.status as ostatus,py.cnumber,ptp.name as cname,oad.company,o.useremail,p.price,py.dfee,py.cpnfee,py.total,v.vimg,o.quantity\r\n"
					+ "FROM orders o,vehicle v, product p,payment py,invoice i,orderaddress oad, orderinfo oi,payment_type ptp\r\n"
					+ "WHERE o.productid = p.product_ID and o.paymentid=py.payment_ID and o.invoiceid = i.idinvoice  and o.vehicleid = v.vehicle_id and o.orderaddressid = oad.id and o.orderinfo = oi.id and py.payment_type_ID=ptp.payment_type_ID and o.useremail=?\r\n"
					+ "ORDER BY o.order_ID DESC\r\n" + "";

			pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			rs = pst.executeQuery();
			while (rs.next()) {
				Order row = new Order();

				row.setOid(rs.getInt("order_ID"));
				row.setId(rs.getInt("product_ID"));
				row.setDiff(rs.getString("diff"));
				row.setDayz(rs.getString("dayz"));
				row.setInvoice(rs.getString("invoice"));
				row.setOplaceddate(rs.getString("placed"));
				row.setOconfirmeddate(rs.getString("confirm"));
				row.setOtransmiteddate(rs.getString("courier"));
				row.setOdelivereddate(rs.getString("done"));
				row.setColor(rs.getString("color"));
				row.setThumbnail(rs.getString("mimg"));
				row.setName(rs.getString("pname"));
				row.setStatus(rs.getString("ostatus"));
				row.setCnum(rs.getString("cnumber"));
				row.setCname(rs.getString("cname"));
				row.setCompany(rs.getString("company"));
				row.setEmail(rs.getString("useremail"));
				row.setPrice(rs.getDouble("price"));
				row.setDfee(rs.getDouble("dfee"));
				row.setCpn(rs.getDouble("cpnfee"));
				row.setTotal(rs.getDouble("total"));
				row.setVehicle(rs.getString("vimg"));
				row.setQuantity(rs.getInt("quantity"));

				order.add(row);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return order;

	}

	// for the ajaxpage
	public List<Order> getOrderList2(int id) {
		List<Order> order = new ArrayList<Order>();

		try {
			query = "SELECT o.order_ID, p.product_ID,i.unique_ID as invoice,datediff(DATE_ADD((o.date), INTERVAL 36457 MINUTE),now()) as diff,DATE_FORMAT(o.date,'%d %b %Y %r') as dayz,DATE_FORMAT(o.date,'%d %b %r') as placed ,DATE_FORMAT(( DATE_ADD((o.date), INTERVAL 15789 MINUTE)),'%d %b %r') as confirm,DATE_FORMAT(( DATE_ADD((o.date), INTERVAL 26930 MINUTE)),'%d %b %r') as courier,DATE_FORMAT(( DATE_ADD((o.date), INTERVAL 36457 MINUTE)),'%d %b %r') as done ,o.color,p.mimg,p.name as pname,o.status as ostatus,py.cnumber,ptp.name as cname,oad.company,o.useremail,p.price,py.dfee,py.cpnfee,py.total,v.vimg,o.quantity\r\n"
					+ "FROM orders o,vehicle v, product p,payment py,invoice i,orderaddress oad, orderinfo oi,payment_type ptp\r\n"
					+ "WHERE o.productid = p.product_ID and o.paymentid=py.payment_ID and o.invoiceid = i.idinvoice  and o.vehicleid = v.vehicle_id and o.orderaddressid = oad.id and o.orderinfo = oi.id and py.payment_type_ID=ptp.payment_type_ID and o.order_ID=?\r\n"
					+ "ORDER BY o.order_ID DESC";

			pst = this.con.prepareStatement(query);

			pst.setInt(1, id);
			rs = pst.executeQuery();
			while (rs.next()) {
				Order row = new Order();

				row.setOid(rs.getInt("order_ID"));
				row.setId(rs.getInt("product_ID"));
				row.setDiff(rs.getString("diff"));
				row.setDayz(rs.getString("dayz"));
				row.setInvoice(rs.getString("invoice"));
				row.setOplaceddate(rs.getString("placed"));
				row.setOconfirmeddate(rs.getString("confirm"));
				row.setOtransmiteddate(rs.getString("courier"));
				row.setOdelivereddate(rs.getString("done"));
				row.setColor(rs.getString("color"));
				row.setThumbnail(rs.getString("mimg"));
				row.setName(rs.getString("pname"));
				row.setStatus(rs.getString("ostatus"));
				row.setCnum(rs.getString("cnumber"));
				row.setCname(rs.getString("cname"));
				row.setCompany(rs.getString("company"));
				row.setEmail(rs.getString("useremail"));
				row.setPrice(rs.getDouble("price"));
				row.setDfee(rs.getDouble("dfee"));
				row.setCpn(rs.getDouble("cpnfee"));
				row.setTotal(rs.getDouble("total"));
				row.setVehicle(rs.getString("vimg"));
				row.setQuantity(rs.getInt("quantity"));

				order.add(row);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return order;

	}

	// inserting reviews
	public int InsertReview(String description, int rating, String useremail, int product_ID, int quality, int accuracy,
			int durability, int shipping, int asment, int reliability) {
		int result = 0;
		try {
			query = "INSERT INTO review (description,rating,useremail,product_ID,quality,accuracy,durability,shipping,asment,reliability)\r\n"
					+ "VALUES (?,?,?,?,?,?,?,?,?,?);";
			pst = this.con.prepareStatement(query);

			pst.setString(1, description);
			pst.setInt(2, rating);
			pst.setString(3, useremail);
			pst.setInt(4, product_ID);
			pst.setInt(5, quality);
			pst.setInt(6, accuracy);
			pst.setInt(7, durability);
			pst.setInt(8, shipping);
			pst.setInt(9, asment);
			pst.setInt(10, reliability);

			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// fetching from the return table
	public int SelectReturn(int id) {
		int totalstar = 0;
		try {
			query = "SELECT return_id FROM cancelorder WHERE o_id=?";

			pst = this.con.prepareStatement(query);

			pst.setInt(1, id);

			rs = pst.executeQuery();
			while (rs.next()) {
				totalstar = (rs.getInt("return_id"));

			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return totalstar;
	}
	// ends

	// insserting the return table
	public int InsertReturn(String reason, int oid) {
		int result = 0;
		try {
			query = "INSERT INTO cancelorder (reason,o_id)" + "VALUES (?,?);";
			pst = this.con.prepareStatement(query);

			pst.setString(1, reason);
			pst.setInt(2, oid);

			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	// ends here

	// upadting the return column
	public int updateReturn(int id) {

		int result = 0;
		try {
			query = "UPDATE cancelorder\r\n" + "SET approved=1,appdate=?\r\n" + "WHERE o_id = ?;";

			pst = this.con.prepareStatement(query);

			pst.setTimestamp(1, date);
			pst.setInt(2, id);

			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// insserting the return table
	public int InsertFeedback(String fname, String lname, String tel, String description, int oid, String email) {
		int result = 0;
		try {
			query = "INSERT INTO feedback (firstname,lastname,phone_no,description,oid,email) VALUES (?,?,?,?,?,?)";
			pst = this.con.prepareStatement(query);

			pst.setString(1, fname);
			pst.setString(2, lname);
			pst.setString(3, tel);
			pst.setString(4, description);
			pst.setInt(5, oid);
			pst.setString(6, email);

			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	// ends here

	// insserting the return table
	public int InsertRefund(String reason, int oid, double totalbill, String email, String tel) {
		int result = 0;
		try {
			query = "INSERT INTO orderrefund (reason,oid,totalbill,email,tel) VALUES (?,?,?,?,?)";
			pst = this.con.prepareStatement(query);

			pst.setString(1, reason);
			pst.setInt(2, oid);
			pst.setDouble(3, totalbill);
			pst.setString(4, email);
			pst.setString(5, tel);
		

			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	// ends here
	
	//selecting from the canceled order
	public String SelectCanceledOrder(int id) {
		String totalstar = "";
		try {
			query = "SELECT  DATE_FORMAT(appdate,'%d %b %Y %r') as dayz FROM cancelorder WHERE o_id=? and approved=1";

			pst = this.con.prepareStatement(query);

			pst.setInt(1, id);

			rs = pst.executeQuery();
			while (rs.next()) {
				
				totalstar = (rs.getString("dayz"));
			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return totalstar;
	}
	//ends here
}
