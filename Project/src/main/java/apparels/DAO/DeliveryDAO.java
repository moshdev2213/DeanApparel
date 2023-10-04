package apparels.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import apparels.DBcon.DbCon;
import apparels.Modal.Delivered;
import apparels.Modal.Delivery;
import apparels.Modal.Driver;


public class DeliveryDAO {
	
	private Connection connection ;
	private String queryString;
	private PreparedStatement pst;
	private ResultSet rs;
	
	
	
	
	public DeliveryDAO(Connection connection) {
		
		this.connection = connection;
	}
	
	public List<Delivery> getAllDeliveries(int id){
		
		List<Delivery> deliveries = new ArrayList<Delivery>();
		
		try {
			
			queryString = "SELECT \r\n"
					+ "    orders.*, \r\n"
					+ "    users.*, \r\n"
					+ "    delivery.*, \r\n"
					+ "    product.* \r\n"
					+ "FROM \r\n"
					+ "    orders \r\n"
					+ "    INNER JOIN users ON orders.useremail = users.useremail \r\n"
					+ "    INNER JOIN delivery ON orders.order_ID = delivery.o_id \r\n"
					+ "    INNER JOIN product ON orders.productid = product.product_ID \r\n"
					+ "WHERE \r\n"
					+ "    delivery.driver_id = ?\r\n"
					+ "";
			
			pst=this.connection.prepareStatement(queryString);
			pst.setInt(1, id);
			rs= pst.executeQuery();
			
			
			while(rs.next()) {
				
				Delivery row = new Delivery();
				
				row.setDid(rs.getInt("id"));
				row.setReference(rs.getString("reference"));
				row.setStatus(rs.getString("delstatus"));
				row.setDate(rs.getString("date"));
				row.setNote(rs.getString("notes"));
//				row.setGainer(rs.getString("gainer"));
				row.setName(rs.getString("name"));
				row.setOid(rs.getInt("o_id"));
				row.setCname(rs.getString("username"));
				
				
				deliveries.add(row);
				
				
				
				
				
				
				
			}
			
			if(rs.next()) {
				
				
				System.out.println("executed");
			}else {
				System.out.println("fail");
				
			}
			
			
			
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return deliveries;
		
		
		
		
	}
	
	
	
	public List<Delivered> getDelivereds(ArrayList<Delivered> deliverdlist){
		
		List<Delivered> deliveries = new ArrayList<Delivered>();
		
		
		try {
			
			if(deliverdlist.size()>0) {
				
				for(Delivered delivered:deliverdlist) {
					
					queryString = "SELECT o.*, u.*, d.*\r\n"
							+ "FROM orders o\r\n"
							+ "INNER JOIN users u ON o.useremail = u.useremail\r\n"
							+ "INNER JOIN delivery d ON o.order_ID = d.o_id\r\n"
							+ "WHERE d.id = ?\r\n"
							+ "";
					pst=this.connection.prepareStatement(queryString);
					pst.setInt(1, delivered.getDid());
					rs=pst.executeQuery();
					
					
					while(rs.next()) {
						
						Delivered row = new Delivered();
						row.setDid(rs.getInt("id"));
						row.setCname(rs.getString("username"));
						row.setEmail(rs.getString("useremail"));
						
						deliveries.add(row);
						
						
						
						
						
					}
					
					
					
					
				}
				
				
				
			}
			
			
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return deliveries;
		
		
	}
	
	
	
	
	public boolean updateStatus(int id) {
		
		boolean result = false;
		
		try {
			
			
			queryString = "UPDATE delivery\r\n"
					+ "SET delstatus = ?\r\n"
					+ "WHERE id = ?\r\n"
					+ "";
			Connection connection = DbCon.getConnection();
			
//			connection.setAutoCommit(false);
			
			
			PreparedStatement pst = connection.prepareStatement(queryString);
			
			
			pst.setString(1, "delivered");
			pst.setInt(2, id);
		
			
			int update = pst.executeUpdate();
			
			
			 //connection.commit();
//			 pst.close();
//			 connection.close();
			 
			 result = (update>0);
			
			
			
			
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return result;
		
		
		
		
		
	}
	
	//deliverM .jsp list
	
	public List<Delivery> getAllDeliveriesfMan(){
		
		List<Delivery> deliveries = new ArrayList<Delivery>();
		
		try {
			
			queryString = "SELECT \r\n"
					+ "    orders.*, \r\n"
					+ "    users.*, \r\n"
					+ "    delivery.*, \r\n"
					+ "    product.* \r\n"
					+ "FROM \r\n"
					+ "    orders \r\n"
					+ "    INNER JOIN users ON orders.useremail = users.useremail \r\n"
					+ "    INNER JOIN delivery ON orders.order_ID = delivery.o_id \r\n"
					+ "    INNER JOIN product ON orders.productid = product.product_ID \r\n"
					+ "";
			
			pst=this.connection.prepareStatement(queryString);
		
			rs= pst.executeQuery();
			
			
			while(rs.next()) {
				
				Delivery row = new Delivery();
				
				row.setDid(rs.getInt("id"));
				row.setReference(rs.getString("reference"));
				row.setStatus(rs.getString("delstatus"));
				row.setDate(rs.getString("date"));
				row.setNote(rs.getString("notes"));
//				row.setGainer(rs.getString("gainer"));
				row.setName(rs.getString("name"));
				row.setOid(rs.getInt("o_id"));
				row.setCname(rs.getString("username"));
				row.setPropic(rs.getString("propic"));
				
				
				deliveries.add(row);
				
				
				
				
				
				
				
			}
			
			if(rs.next()) {
				
				
				System.out.println("executed");
			}else {
				System.out.println("fail");
				
			}
			
			
			
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return deliveries;
		
		
		
		
	}
	
	
	
	

}
