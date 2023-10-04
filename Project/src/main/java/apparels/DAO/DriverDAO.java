package apparels.DAO;
import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



import com.mysql.cj.protocol.Resultset;

import apparels.DBcon.DbCon;
import apparels.Modal.*;
import apparels.Modal.Driver;



public class DriverDAO {
	
	private Connection connection ;
	private String queryString;
	private String UpdatequeryString;
	private String queryStringType;
	private String queryStringLicen;
	private PreparedStatement pst;
	private PreparedStatement pst2;
	private ResultSet rs;
	
	
	public DriverDAO(Connection connection) {

		this.connection = connection;
	}
	
	
	
	public Driver driverlogin(String email, String password) {
		
		Driver driver = null;
		
		
		try {
			
			queryString="select * from driver where email=? and password=?";
			pst=this.connection.prepareStatement(queryString);
			pst.setString(1, email);
			pst.setString(2, password);
			rs=pst.executeQuery();
			
			
			if(rs.next()) {
				
				driver = new Driver();
				driver.setId(rs.getInt("driver_id"));
				driver.setName(rs.getString("username"));
				driver.setEmail(rs.getString("email"));
				driver.setVId(rs.getInt("vehicle_id"));
				driver.setFullname(rs.getString("fullname"));
				driver.setPassword(rs.getString("password"));
				
				
				
				
				

			}
			
			
			
			
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		
		return driver;
		
		
	}
	
	
	public Vehicle getDriverByID(int id) {
		
		Vehicle vehicle = null;
		
		try {
			queryString="select * from vehicle where vehicle_id=?";
			pst=this.connection.prepareStatement(queryString);
			pst.setInt(1, id);
			rs=pst.executeQuery();
			
			
	        if (rs.next()) {
	        	//vehicle
	        	vehicle = new Vehicle();
				vehicle.setAbout(rs.getString("about"));
				vehicle.setVname(rs.getString("vname"));
				vehicle.setVehicleid(rs.getInt("vehicle_id"));
				vehicle.setVtype(rs.getString("vtype"));
				vehicle.setInsurance(rs.getString("insurance"));
				vehicle.setChasisNo(rs.getString("chasisno"));
				vehicle.setMileage(rs.getInt("mileage"));
				vehicle.setAvaiFuel(rs.getInt("Availfuel"));
				vehicle.setAvgSpeed(rs.getInt("Avgspeed"));
				vehicle.setBatteryHealth(rs.getInt("batteryhealth"));
				vehicle.setVimg(rs.getString("vimg"));
				
				System.out.println(vehicle.getChasisNo());
				
            }
			
			
			
			
			
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return vehicle;
		
		
	}
	
	
	public Licence getLicenceDetails(int driver_id) {
		
		Licence licence=null;
		
		try {
			
			
			queryString="select * from liscence where driver_id=?";
			pst=this.connection.prepareStatement(queryString);
			
			pst.setInt(1, driver_id);
			rs=pst.executeQuery();
			
			licence = new Licence();
			
			 if (rs.next()) {
				 
				 
				 licence.setAdd(rs.getString("address"));
				 licence.setBlood(rs.getString("Blood"));
				 licence.setDob(rs.getString("dob"));
				 licence.setExpdate(rs.getString("expiredate"));
				 licence.setIssudate(rs.getString("issuedate"));
				 licence.setLicencecardid(rs.getString("licencecardid"));
				 licence.setName(rs.getString("name"));
				 
				 
				 
				 
				 
				 
				 
				 
			 }else {
				 
				 
				 licence.setAdd("address");
				 licence.setBlood("Blood");
				 licence.setDob("dob");
				 licence.setExpdate("expiredate");
				 licence.setIssudate("issuedate");
				 licence.setLicencecardid("licencecardid");
				 licence.setName("name");
				 
				 
				
			}
			
			
			
			
			
			
			
			
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		
		return licence;
		
		
		
	}
	
	
	public boolean insertLicenceDetails(Licence licence) {
		
		boolean success = false;
		
		try {
			
			
			queryStringType = "INSERT INTO liscencetype (type, created) VALUES (?,?) "; //licen type;
			queryStringLicen="INSERT INTO liscence (ltype_id, name, issuedate, expiredate, dob, address, Blood, driver_id, licencecardid)\r\n"
					+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)"; //licen
			
			
			
			Connection connection = DbCon.getConnection();
			
			connection.setAutoCommit(false);
			
			
			PreparedStatement pst = connection.prepareStatement(queryStringType, Statement.RETURN_GENERATED_KEYS);
			
			
			//pst=this.connection.prepareStatement(queryString);
			
			pst.setString(1, licence.getType());
			pst.setString(2, licence.getCreated());
			
			int typeinsertedd = pst.executeUpdate();
			
			
			
			
			ResultSet generatedKeys = pst.getGeneratedKeys();
			int Typeid = 0;
			
			
		    if (generatedKeys.next()) {
		        Typeid = generatedKeys.getInt(1);
		      }
		    
		    
		    
		    //2nd query
		    
		    PreparedStatement pst2 = connection.prepareStatement(queryStringLicen);
		    
		   // pst2=this.connection.prepareStatement(queryStringLicen);
		    
		    pst2.setInt(1, Typeid);
		    pst2.setString(2, licence.getName());
		    pst2.setString(3, licence.getIssudate());
		    pst2.setString(4, licence.getExpdate());
		    pst2.setString(5, licence.getDob());
		    pst2.setString(6, licence.getAdd());
		    pst2.setString(7, licence.getBlood());
		    pst2.setInt(8, licence.getDriverid());
		    pst2.setString(9, licence.getLicencecardid());
		    
		    int liceninserted = pst2.executeUpdate();
		    
		    
			
		    
		    
		     
		    
		    
		    connection.commit();
		    
		    
		    
		    pst.close();
		    pst2.close();
		   
//		    connection.close();
		    
		    
			
			
			
		    success = (typeinsertedd > 0 && liceninserted > 0);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		
		return success;
		
		
		
		
		
		
	}
	
	public boolean updateProfile(Driver driver) {
		
		boolean result = false;
		
		try {
			
			
			UpdatequeryString = "UPDATE driver\r\n"
					+ "SET email = ?, username = ?, fullname = ?\r\n"
					+ "WHERE driver_id = ?\r\n"
					+ "";
			Connection connection = DbCon.getConnection();
			
			//connection.setAutoCommit(false);
			
			
			PreparedStatement pst = connection.prepareStatement(UpdatequeryString);
			
			
			pst.setString(1, driver.getEmail());
			pst.setString(2, driver.getName());
			pst.setString(3, driver.getFullname());
			pst.setInt(4, driver.getId());
			
			int update = pst.executeUpdate();
			
			
			// connection.commit();
			// pst.close();
			 //connection.close();
			 
			 result = (update>0);
			
			
			
			
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return result;
		
		
		
		
		
	}
	
	
	
	public Driver getDriverprofile(int id) {
		
		Driver driver = null;
		
		
		try {
			
			queryString="select * from driver where driver_id=? ";
			pst=this.connection.prepareStatement(queryString);
			pst.setInt(1, id);
			
			rs=pst.executeQuery();
			
			
			if(rs.next()) {
				
				driver = new Driver();
				driver.setId(rs.getInt("driver_id"));
				driver.setName(rs.getString("username"));
				driver.setEmail(rs.getString("email"));
				driver.setVId(rs.getInt("vehicle_id"));
				driver.setFullname(rs.getString("fullname"));
			
				
				driver.setPassword(rs.getString("password"));
				driver.setPropic(rs.getString("propic"));
				
				
				
				
				

			}
			
			
			
			
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		
		return driver;
	}
	
	
	
	public boolean deleteLicencesByDriverId(int driverId) {
	    boolean result = false;
	    try {
	    
	    String queryString = "DELETE FROM liscence WHERE driver_id = ?";
	    pst=this.connection.prepareStatement(queryString);
		pst.setInt(1, driverId);
		
	     int rowsDeleted = pst.executeUpdate();
	        
	     result = (rowsDeleted > 0);
		
		
	    }catch (Exception e) {
			// TODO: handle exception
	    	e.printStackTrace();
		}
	    
	    return result;
	    
	}
	
	
	

	
	
		
	
  

}
