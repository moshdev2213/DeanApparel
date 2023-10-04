package apparels.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import java.util.*;

import apparels.Modal.EmpAttendance;
import apparels.Modal.EmpLeaves;
import apparels.Modal.Employee;

public class EmployeeDao {
	
	private Connection con;

	private String query;
    private PreparedStatement pst;
    private ResultSet rs;

	public EmployeeDao(Connection con) {
		this.con = con;
	}
	
	
	
	//Employee login
	
	public Employee EmpLogin(String email, String password) {
		Employee emp = null;
        try {
            query = "select * from employee where emp_email =? and emp_password=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            
            rs = pst.executeQuery();
            if(rs.next()){
            	emp = new Employee();
            	emp.setId(rs.getInt("emp_id"));
            	emp.setName(rs.getString("emp_name"));
            	emp.setEmail(rs.getString("emp_email"));
            	emp.setPropic(rs.getString("profilepic"));
            	emp.setDepartment(rs.getString("department"));
            	emp.setDob(rs.getString("emp_DOB"));
            	emp.setTel(rs.getString("emp_tel"));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return emp;
    }
	
	
	
	//Take Attendance
	
	 public void addAttend(EmpAttendance form) {
	        String sql = "INSERT INTO attendence (name , punchIn , date , punchOut , wrkHrs) VALUES (?, ?, ?, ?, ?)";

	        try {
	        	pst = this.con.prepareStatement(sql);
	        	
	        	
	        	pst.setString(1, form.getName());
	            pst.setString(2, form.getPunchIn());
	            pst.setString(3, form.getDate());
	            pst.setString(4, form.getPunchOut());
	            pst.setString(5, form.getWorkHours());
	    	            
	            pst.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	
	//update attendance
	 public void updateAttend(EmpAttendance form) {
		    String sql = "UPDATE attendence SET punchOut = ?, wrkHrs = ? WHERE date = ?";

		    try {
		        pst = this.con.prepareStatement(sql);
		        
		        pst.setString(1, form.getPunchOut());
		        pst.setString(2, form.getWorkHours());
		      //  pst.setInt(3, form.getId());
		        pst.setString(3, form.getDate());

		        pst.executeUpdate();
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		}

	
	 

	 
	 //select all attendance
	 
	 public List<EmpAttendance> selectAttend() {
		 List<EmpAttendance> attend = new ArrayList<>();
		 String selectSql= "SELECT * FROM attendence";
		 
		 try {
			 pst=this.con.prepareStatement(selectSql);
			 rs=pst.executeQuery();
			 
			 while (rs.next()) {
				 int id=rs.getInt("id");
				 String name=rs.getString("name");
				 String role=rs.getString("role");
				 String inTime=rs.getString("punchIn");
				 String outDate=rs.getString("date");
				 String outTime=rs.getString("punchOut");
				 String workHours=rs.getString("wrkHrs");
				 
				 EmpAttendance empatt =new EmpAttendance();
				 empatt.setId(id);
				 empatt.setName(name);
				 empatt.setRole(role);
				 empatt.setPunchIn(inTime);
				 empatt.setDate(outDate);
				 empatt.setPunchOut(outTime);
				 empatt.setWorkHours(workHours);
				 
				 
				 
				 attend.add(empatt);
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		 return attend;
		 
	 }
	 
	 
	 
	 //apply leaves
	 public void applyLeave(EmpLeaves Lv) {
	        String sql = "INSERT INTO leavetaken (name, fromDate, toDate, type , appliedDate, breakdown , reason) VALUES (?, ?, ?, ?, ?, ?, ?)";

	        try {
	        	pst = this.con.prepareStatement(sql);
	        	
	        	pst.setString(1, Lv.getName());
	        	pst.setString(2, Lv.getFromDate());
	            pst.setString(3, Lv.getToDate());
	            pst.setString(4, Lv.getType());
	            pst.setString(5, Lv.getAppliedDate());
	            pst.setString(6, Lv.getBreakdown());	            
	            pst.setString(7, Lv.getReason());
	    	            
	            pst.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	 
	 
	 
	 
	 
	 
	 
	//select all leaves
	 
		 public List<EmpLeaves> selectLeaves() {
			 List<EmpLeaves> leave = new ArrayList<>();
			 String selectSql= "SELECT * FROM leavetaken";
			 
			 try {
				 pst=this.con.prepareStatement(selectSql);
				 rs=pst.executeQuery();
				 
				 while (rs.next()) {
					 int id=rs.getInt("id");
					 String name=rs.getString("name");
					 String fromDate=rs.getString("fromDate");
					 String toDate=rs.getString("toDate");
					 String type=rs.getString("type");
					 String appliedDate=rs.getString("appliedDate");
					 String breakdown=rs.getString("breakdown");
					 String reason=rs.getString("reason");
					 
					 EmpLeaves empLve =new EmpLeaves();
					 empLve.setId(id);
					 empLve.setName(name);
					 empLve.setFromDate(fromDate);
					 empLve.setToDate(toDate);
					 empLve.setType(type);
					 empLve.setAppliedDate(appliedDate);
					 empLve.setBreakdown(breakdown);
					 empLve.setReason(reason);
					 
					 
					 
					 leave.add(empLve);
				 }
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			 
			 return leave;
			 
		 }
		 
		 
		 
		 // Delete leaves  by ID

		    public void deleteData(int id) throws SQLException {
		        String query = "DELETE FROM leavetaken WHERE id = ?";
		        try (PreparedStatement pst = con.prepareStatement(query)) {
		            pst.setInt(1, id);
		            pst.executeUpdate();
		        } catch (SQLException e) {
		            e.printStackTrace();
		            throw e;
		        }
		    }
		    
		   
		    
		    
			//update Employee information
		    public void updateEmployee(int empId, EmpAttendance form) {
		        String sql = "UPDATE employee SET emp_name = ?,emp_DOB = ?,emp_tel = ?, emp_email = ? WHERE emp_id = ?";

		        try (PreparedStatement pst = con.prepareStatement(sql)) {
		            pst.setString(1, form.getName());
		            pst.setString(2, form.getDob());
		            pst.setString(3, form.getTel());
		            pst.setString(4, form.getEmail());
		            pst.setInt(5, empId);

		            pst.executeUpdate();
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		    }


}
