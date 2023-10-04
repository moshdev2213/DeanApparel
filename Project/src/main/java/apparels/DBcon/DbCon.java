package apparels.DBcon;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbCon {
	private static Connection connection = null;
	
	public static Connection getConnection() {
		if(connection == null) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");

				connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/dean_apparels","root","#True12345");

				System.out.println("Connected");
			} catch (ClassNotFoundException | SQLException e) {
				
				e.printStackTrace();
			}
		}
		return connection;
	}
}
