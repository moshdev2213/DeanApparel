package apparels.Utils;

import java.util.ArrayList;
import java.sql.Connection;
import java.text.SimpleDateFormat;  
import java.util.Date;

import apparels.DBcon.DbCon;
import apparels.Utils.CommonUtils;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CommonUtils {

	public static String getCurrentDateTIme()
	{
		String formattedDate = "";
		
	    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
	    Date date = new Date();  
	    
//	    System.out.println(formatter.format(date));
	    formattedDate = formatter.format(date);
	    
		return formattedDate;
	}
	
	public static int getLastItemID(String tblName) {
		
		Connection conn = DbCon.getConnection();
		PreparedStatement pst;
		ResultSet rs;
		int lastID = 0;
		
		try {
			String query = "SELECT id from "+ tblName +" ORDER BY id DESC LIMIT 1";
			pst = conn.prepareStatement(query);
			rs = pst.executeQuery();
			while (rs.next()) {
				lastID = rs.getInt("id");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return lastID;
		
	}
		
	public static String generateItemId(int lastId, String idPrefix)
	{
		String itemID = "";
		
		int nextId = lastId + 1;
		itemID = idPrefix + nextId;
		
		return itemID;
	}
			
	
}
