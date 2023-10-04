package apparels.DAO;
import java.sql.*;

import java.util.ArrayList;
import java.util.List;

import apparels.Modal.*;
import apparels.Modal.Driver;

public class AdminDao {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    
    
    public AdminDao(Connection con) {
		this.con = con;
	}
    
    public Admin adminLogin(String email, String password,String role) {
		Admin admin = null;
        try {


            query = "select * from employee where email=? and password=? and actstatus=?";

            pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            pst.setString(3, role);
            rs = pst.executeQuery();
            if(rs.next()){
            	admin = new Admin();
            
            	admin.setTel(rs.getString("phone"));
            	admin.setEmail(rs.getString("email"));
            	admin.setPassword(rs.getString("password"));
            	admin.setPropic(rs.getString("propic"));
            	admin.setCoverpic(rs.getString("coverpic"));
            	admin.setAbout(rs.getString("about"));
            	admin.setUsername(rs.getString("username"));
            	admin.setRole(rs.getString("role"));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return admin;
    }
  //to get all admins from the DB
  	public List<Admin> getAdmin(){
  		List<Admin> admin = new ArrayList<Admin>();
  		try {
  			query="select * from employee";
  			pst=this.con.prepareStatement(query);
  			rs=pst.executeQuery();
  			while(rs.next()) {
  				Admin adm = new Admin();
  				
  				adm.setTel(rs.getString("phone"));
  				adm.setEmail(rs.getString("email"));
  				adm.setPassword(rs.getString("password"));
  				adm.setPropic(rs.getString("propic"));
  				adm.setCoverpic(rs.getString("coverpic"));
  				adm.setAbout(rs.getString("about"));
  				adm.setUsername(rs.getString("username"));
  				adm.setRole(rs.getString("role"));
  				adm.setCode(rs.getString("code"));
  				admin.add(adm);
  				
  			}
  		}catch(Exception e) {
  			e.printStackTrace();
  		}
  		return admin;
  		
  	}
  	
  	
public List<Vehicle> getallVehiclesM(){
		
		List<Vehicle> vehicles = new ArrayList<Vehicle>();
		
		try {
			
			query = "select * from vehicle";
			
			pst=this.con.prepareStatement(query);
		
			rs= pst.executeQuery();
			
			
			while(rs.next()) {
				
				Vehicle vehicle = new Vehicle();
				
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
				
				
				vehicles.add(vehicle);
				
				
				
				
				
				
				
				
			}
			
			if(rs.next()) {
				
				
				System.out.println("executed");
			}else {
				System.out.println("fail");
				
			}
			
			
			
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return vehicles;
		
		
		
		
	}



public List<Driver> getallDriversM(){
	
	List<Driver> vehicles = new ArrayList<Driver>();
	
	try {
		
		query = "select * from driver";
		
		pst=this.con.prepareStatement(query);
	
		rs= pst.executeQuery();
		
		
		while(rs.next()) {
			
			Driver vehicle = new Driver();
			
			vehicle.setName(rs.getString("username"));
			vehicle.setEmail(rs.getString("email"));
			vehicle.setFullname(rs.getString("fullname"));
			vehicle.setPassword(rs.getString("password"));
			vehicle.setId(rs.getInt("driver_id"));
			vehicle.setPropic(rs.getString("propic"));
			
			
			
			
			vehicles.add(vehicle);
			
			
			
			
			
			
			
			
		}
		
		if(rs.next()) {
			
			
			System.out.println("executed");
		}else {
			System.out.println("fail");
			
		}
		
		
		
		
		
		
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	
	return vehicles;
	
	
	
	
}
	
}
