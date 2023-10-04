package apparels.DAO;
import apparels.Modal.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class LogTimeDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;

	java.util.Date date = new java.util.Date();
	
	public LogTimeDao(Connection con) {
		this.con = con;
	}

	public boolean insertlogs(LogTime lgtime) {
		boolean result = false;

		try {
			query = "Insert into logtime (uemail,time,day,month,date,role_id) values(?,?,?,?,?,?)";
			pst = this.con.prepareStatement(query);

			pst.setString(1, lgtime.getUemail());
			pst.setString(2, lgtime.getTime());
			pst.setString(3, lgtime.getDay());
			pst.setString(4, lgtime.getMonth());
			pst.setString(5, lgtime.getDate());
			pst.setInt(6, lgtime.getRole());

			pst.executeUpdate();
			result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//for the taking of the last ID
	public int lastLogID(String email, String times) {
		int lid=0;
        try {
            query = "select * from logtime where uemail=? and time=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, times);
            rs = pst.executeQuery();
            if(rs.next()){
            	lid=rs.getInt("id");
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return lid;
    }
	//end
	
	//for the detection table insert
	public int insertlogsDetection(int lid,String ip,String isp,double lats,double longs,int postal,String leisure,String road,String neighbourhood,String hamlet,String town,String district,String state,String countrycode,String country,String device) {
		int result = 0;

		try {
			query = "Insert into logdetection (logid,ip,isp,lats,longs,postal,leisure,road,neighbourhood,hamlet,town,district,state,countrycode,country,device) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pst = this.con.prepareStatement(query);

			pst.setInt(1, lid);
			pst.setString(2, ip);
			pst.setString(3, isp);
			pst.setDouble(4, lats);
			pst.setDouble(5, longs);
			pst.setInt(6, postal);
			pst.setString(7, leisure);
			pst.setString(8, road);
			pst.setString(9, neighbourhood);
			pst.setString(10, hamlet);
			pst.setString(11, town);
			pst.setString(12, district);
			pst.setString(13, state);
			pst.setString(14, countrycode);
			pst.setString(15, country);
			pst.setString(16, device);

			result=pst.executeUpdate();
			

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	//ends here
	
	//for the logout time
	public boolean updateLogs(String email) {
		boolean result = false;

		try {
			pst = this.con.prepareCall("{call generateActHrs(?, ?)}");

			Timestamp currentTime = new Timestamp(date.getTime());

			pst.setString(1, email);
			pst.setTimestamp(2, currentTime);

			pst.execute();
			result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	//ensd here
	

}
