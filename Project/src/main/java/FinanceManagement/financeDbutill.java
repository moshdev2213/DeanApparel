package FinanceManagement;

import java.sql.DriverManager;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

//import com.mysql.jdbc.Connection;
//import com.mysql.jdbc.Statement;

import java.sql.Connection;
import java.sql.Statement;

public class financeDbutill {

	public static List<payment> validate(String pId) {

		ArrayList<payment> pay = new ArrayList<>();

		String url = "jdbc:mysql://localhost:3306/dean_apparels";
		String user = "root";
		String pass = "#True12345";

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url, user, pass);
			Statement stmt = (Statement) con.createStatement();
			String sql = "SELECT * FROM dean_apparels.payment_new WHERE ID ='" + pId + "'";

			ResultSet rs = stmt.executeQuery(sql);

			if (rs.next()) {

				int id = rs.getInt(1);
				String Name = rs.getString(2);
				String email = rs.getString(3);
				String Card_number = rs.getString(4);

				payment p = new payment(id, Name, email, Card_number);
				pay.add(p);
			} else {

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return pay;

	}

	public static boolean insertFin(String Name, String Email, String Card_numebr) {

		boolean isSuccess = false;

		String url = "jdbc:mysql://localhost:3306/dean_apparels";
		String user = "root";
		String pass = "#True12345";

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url, user, pass);
			Statement stmt = (Statement) con.createStatement();
			String sql = "INSERT INTO dean_apparels.payment_new values(0,'" + Name + "','" + Email + "','" + Card_numebr
					+ "')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {

				isSuccess = true;

			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;

	}

	public static boolean UpdatePayment(String id, String name, String email, String card_number) {

		boolean isSuccess = false;

		String url = "jdbc:mysql://localhost:3306/dean_apparels";
		String user = "root";
		String pass = "#True12345";

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url, user, pass);
			Statement stmt = (Statement) con.createStatement();
			String sql = "update dean_apparels.payment_new set Name='" + name + "' , Email='" + email
					+ "' , Card_number='" + card_number + "'  where ID  ='" + id + "' ";
			int rs = stmt.executeUpdate(sql);
			if (rs > 0) {

				isSuccess = true;

			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;

	}

	public static boolean deletePayment(String ID) {

		int id = Integer.parseInt(ID);

		boolean isSuccess = false;

		String url = "jdbc:mysql://localhost:3306/dean_apparels";
		String user = "root";
		String pass = "#True12345";

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url, user, pass);
			Statement stmt = (Statement) con.createStatement();
			String sql = "DELETE FROM dean_apparels.payment_new where ID  ='" + id + "'";
			int rs = stmt.executeUpdate(sql);
			if (rs > 0) {

				isSuccess = true;

			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;

	}

}
