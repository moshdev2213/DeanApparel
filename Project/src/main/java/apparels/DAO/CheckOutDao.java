package apparels.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import apparels.Modal.Product;
import apparels.Modal.Vehicle;

public class CheckOutDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;

	public CheckOutDao(Connection con) {
		this.con = con;
	}

	// for the districts
	public HashMap<String, String> getALLDistrict() {
		HashMap<String, String> district = new HashMap<String, String>();

		try {
			String dcode = null;
			String dname = null;

			query = "select * from district ";
			pst = this.con.prepareStatement(query);

			rs = pst.executeQuery();
			while (rs.next()) {
				dcode = rs.getString("district_ID");
				dname = rs.getString("name");

				district.put(dcode, dname);
			}

			System.out.println(district);
			return district;
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return district;
	}

	// for the the provinces
	public HashMap<String, String> getALLProvince() {
		HashMap<String, String> province = new HashMap<String, String>();

		try {
			String pcode = null;
			String pname = null;

			query = "select * from province ";
			pst = this.con.prepareStatement(query);

			rs = pst.executeQuery();
			while (rs.next()) {
				pcode = rs.getString("province_ID");
				pname = rs.getString("name");

				province.put(pcode, pname);
			}

			System.out.println(province);
			return province;
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return province;
	}

	// for the delivery vehicle
	public List<Vehicle> getVehiceDrop() {
		List<Vehicle> vehicles = new ArrayList<Vehicle>();

		try {
			query = "SELECT * \r\n" + "FROM vehicle v , vehicletype vt \r\n" + "WHERE v.vtype = vt.vtype_id;";

			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			while (rs.next()) {
				Vehicle row = new Vehicle();
				row.setVehicleid(rs.getInt("vehicle_id"));
				row.setInsurance(rs.getString("insurance"));
				row.setChasisNo(rs.getString("chasisno"));
				row.setAbout(rs.getString("about"));
				row.setMileage(rs.getInt("mileage"));
				row.setVname(rs.getString("vname"));
				row.setShipfee(rs.getDouble("shipfee"));
				row.setVtype(rs.getString("type"));
				vehicles.add(row);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vehicles;

	}

	// taking the vehicle from the vehicl id
	public double getFee(String id) {
		double fee = 0;
		try {
			query = "SELECT vt.shipfee \r\n" + "FROM vehicle v , vehicletype vt \r\n"
					+ "WHERE v.vtype = vt.vtype_id and v.vehicle_id=?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, id);
			rs = pst.executeQuery();
			while (rs.next()) {
				fee = rs.getDouble("shipfee");

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return fee;
	}

	// fr the product of the checkout

	public Product getItemForCheck(String id) {
		Product row = new Product();
		try {
			query = "SELECT p.barcode,p.product_ID,p.name,p.mimg,p.price\r\n" + "FROM product p\r\n"
					+ "					WHERE  p.actid=1 and p.product_ID=?";

			pst = this.con.prepareStatement(query);
			pst.setString(1, id);
			rs = pst.executeQuery();
			while (rs.next()) {

				row.setId(rs.getInt("product_ID"));
				row.setName(rs.getString("name"));
				row.setPrice(rs.getDouble("price"));
				row.setThumbnail(rs.getString("mimg"));
				row.setBarcode(rs.getInt("barcode"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return row;

	}
	// ends here

	// for the ptype
	public int getPtype(String ptype) {
		int id = 0;
		try {
			query = "SELECT payment_type_ID from payment_type pt where pt.name=?";

			pst = this.con.prepareStatement(query);
			pst.setString(1, ptype);
			rs = pst.executeQuery();
			while (rs.next()) {
				id = rs.getInt("payment_type_ID");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;

	}
	// ends here

	// for the product price
	public int getPpice(String ptype) {
		int id = 0;
		try {
			query = "SELECT price from product where product_ID=?";

			pst = this.con.prepareStatement(query);
			pst.setString(1, ptype);
			rs = pst.executeQuery();
			while (rs.next()) {
				id = rs.getInt("price");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;

	}
	// ends here

	// for the product price
	public int getPcpn(String cpn) {
		int id = 0;
		try {
			query = "SELECT value from coupon where coupon=?";

			pst = this.con.prepareStatement(query);

			pst.setString(1, cpn);

			rs = pst.executeQuery();
			while (rs.next()) {
				id = rs.getInt("value");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;

	}
	// ends here

	// for the deleviery price
	public double getDprice(int id) {
		double price = 0;
		try {
			query = "SELECT vt.shipfee from vehicletype vt , vehicle v where vt.vtype_id=v.vtype and v.vehicle_id=?";

			pst = this.con.prepareStatement(query);

			pst.setInt(1, id);

			rs = pst.executeQuery();
			while (rs.next()) {
				price = rs.getDouble("shipfee");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return price;

	}
	// ends here

	// for the InvoiceId price
	public int getInvoiceId(String id) {
		int price = 0;
		try {
			query = "SELECT idinvoice from invoice where unique_ID=?";

			pst = this.con.prepareStatement(query);

			pst.setString(1, id);

			rs = pst.executeQuery();
			while (rs.next()) {
				price = rs.getInt("idinvoice");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return price;

	}
	// ends here

	// for the InvoiceId price
	public int getOaddressId(String city, String district, String province, String address, String company) {
		int price = 0;
		try {
			query = "SELECT id from orderaddress where cityid=? and districtid=? and provinceid=? and address=? and company=?";

			pst = this.con.prepareStatement(query);

			pst.setString(1, city);
			pst.setString(2, district);
			pst.setString(3, province);
			pst.setString(4, address);
			pst.setString(5, company);

			rs = pst.executeQuery();
			while (rs.next()) {
				price = rs.getInt("id");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return price;

	}
	// ends here

	// for the orderinfoId price
	public int getOinfId(String fname,String lname,String phone,String notes,String coupon) {
		int price = 0;
		try {
			query = "SELECT id from orderinfo where fname=? and lname=? and phone=? and note=? and coupon=?";

			pst = this.con.prepareStatement(query);

			pst.setString(1, fname);
			pst.setString(2, lname);
			pst.setString(3, phone);
			pst.setString(4, notes);
			pst.setString(5, coupon);

			rs = pst.executeQuery();
			while (rs.next()) {
				price = rs.getInt("id");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return price;

	}
	// ends here
	
	// for the orderinfoId price
		public int getPayId(int payid,String email,String cname,String cnum,String csv,String expire,double cpnprice,double deliveryprice,double pprice,double total) {
			int price = 0;
			try {
				query = "SELECT payment_ID from payment where payment_type_ID=? and useremail=? and cname=? and cnumber=? and cvc=? and cexpire=? and cpnfee=? and dfee=? and subtotal=? and total=?";

				pst = this.con.prepareStatement(query);

				pst.setInt(1, payid);
				pst.setString(2, email);
				pst.setString(3, cname);
				pst.setString(4, cnum);
				pst.setString(5, csv);
				pst.setString(6, expire);
				pst.setDouble(7, cpnprice);
				pst.setDouble(8, deliveryprice);
				pst.setDouble(9, pprice);
				pst.setDouble(10, total);

				rs = pst.executeQuery();
				while (rs.next()) {
					price = rs.getInt("payment_ID");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return price;

		}
		// ends here

	// insert into orderInfo Table
	public int InsertOrderinfo(String fname, String lname, String phone, String note, String coupon) {
		System.out.println(fname+" "+lname+" "+phone+""+note+" "+coupon);
		int result = 0;
		try {
			query = "INSERT INTO orderinfo (fname,lname,phone,note,coupon)\r\n" + "VALUES (?,?,?,?,?);";
			pst = this.con.prepareStatement(query);
			pst.setString(1, fname);
			pst.setString(2, lname);
			pst.setString(3, phone);
			pst.setString(4, note);
			pst.setString(5, coupon);
			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	// ends here

	// insert into payment Table

	public int InsertPayment(int ptype, String email, String cname, String cnumber, String cvc, String cexpire,
			double cpnfee, double dfee, double subtotal, double total) {
		int result = 0;
		try {
			query = "INSERT INTO payment (payment_type_ID,useremail,cname,cnumber,cvc,cexpire,cpnfee,dfee,subtotal,total)\r\n"
					+ "VALUES (?,?,?,?,?,?,?,?,?,?);";
			pst = this.con.prepareStatement(query);
			pst.setInt(1, ptype);
			pst.setString(2, email);
			pst.setString(3, cname);
			pst.setString(4, cnumber);
			pst.setString(5, cvc);
			pst.setString(6, cexpire);
			pst.setDouble(7, cpnfee);
			pst.setDouble(8, dfee);
			pst.setDouble(9, subtotal);
			pst.setDouble(10, total);
			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	// ends here

	// insert into invoice Table

	public int InsertInvoice(String uniqueId) {
		int result = 0;
		try {
			query = "INSERT INTO invoice (unique_ID)\r\n" + "VALUES (?);";
			pst = this.con.prepareStatement(query);

			pst.setString(1, uniqueId);

			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	// ends here

	// insert into orderaddress Table

	public int InsertOrderddress(String cityid, String districtid, String provinceid, String address, String company) {
		int result = 0;
		try {
			query = "INSERT INTO orderaddress (cityid,districtid,provinceid,address,company)\r\n"
					+ "VALUES (?,?,?,?,?);";
			pst = this.con.prepareStatement(query);

			pst.setString(1, cityid);
			pst.setString(2, districtid);
			pst.setString(3, provinceid);
			pst.setString(4, address);
			pst.setString(5, company);

			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	// ends here

	// insert into order Table

	public int InsertOrder(String email, int quantity, int pid, int payid, int invoiceid, int vid, int oaddid,
			int oinfoid, String size, String color) {
		int result = 0;
		System.out.println(oinfoid);
		try {
			query = "INSERT INTO orders (useremail,quantity,productid,paymentid,invoiceid,vehicleid,orderaddressid,orderinfo,size,color)\r\n"
					+ "VALUES (?,?,?,?,?,?,?,?,?,?);";
			pst = this.con.prepareStatement(query);

			pst.setString(1, email);
			pst.setInt(2, quantity);
			pst.setInt(3, pid);
			pst.setInt(4, payid);
			pst.setInt(5, invoiceid);
			pst.setInt(6, vid);
			pst.setInt(7, oaddid);
			pst.setInt(8, oinfoid);
			pst.setString(9, size);
			pst.setString(10, color);

			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	// ends here
}
