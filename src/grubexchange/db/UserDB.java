package grubexchange.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import grubexchange.business.User;
import grubexchange.util.ConnectionPool;

public class UserDB {
	
	public static int insert(User user){
		System.out.println("UserDB:insert:Entering");
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection connection = pool.getConnection();
		PreparedStatement ps = null;
		int recordsInserted = -1;
		System.out.println(user);
		String query 
			= "INSERT INTO user (first_name, last_name, email_address, password, phone_number, peanuts_allergy, eggs_allergy, cowsmilk_allergy, treenuts_allergy, shellfish_allergy, wheat_allergy, soy_allergy, terms_and_conditions)" 
			+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			ps = connection.prepareStatement(query);
			ps.setString(1, user.getFirstName());
			ps.setString(2, user.getLastName());
			ps.setString(3, user.getEmailAddress());
			ps.setString(4, user.getPassword());
			ps.setString(5, user.getPhoneNumber());
			ps.setBoolean(6, user.isPeanutsAllergy());
			ps.setBoolean(7, user.isEggsAllergy());
			ps.setBoolean(8, user.isCowsmilkAllergy());
			ps.setBoolean(9, user.isTreenutsAllergy());
			ps.setBoolean(10, user.isShellfishAllergy());
			ps.setBoolean(11, user.isWheatAllergy());
			ps.setBoolean(12, user.isSoyAllergy());
			ps.setBoolean(13, user.isTermsAndConditions());
			recordsInserted = ps.executeUpdate();
			return recordsInserted;
		} catch (SQLException e) {
			System.out.println(e);
			return 0;
		} finally {
			System.out.println("UserDB:insert:Exiting");
			try { ps.close(); } catch (SQLException e) {}
			pool.freeConnection(connection);	
		}
	}
	
	public static User selectUser(String email){
		System.out.println("UserDB:seclectUser:Entering");
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection connection = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String query 
			= "SELECT * FROM user" + " WHERE email_address = ?";
		try {
			ps = connection.prepareStatement(query);
			ps.setString(1, email);
			rs = ps.executeQuery();
			User user = null;
			if (rs.next()) {
				user = new User();
				user.setIduser(rs.getInt("iduser"));
				user.setFirstName(rs.getString("first_name"));
				user.setLastName(rs.getString("last_name"));
				user.setEmailAddress(rs.getString("email_address"));
				user.setPassword(rs.getString("password"));
				user.setPhoneNumber(rs.getString("phone_number"));
				user.setPeanutsAllergy(rs.getBoolean("peanuts_allergy"));
				user.setEggsAllergy(rs.getBoolean("eggs_allergy"));
				user.setCowsmilkAllergy(rs.getBoolean("cowsmilk_allergy"));
				user.setTreenutsAllergy(rs.getBoolean("treenuts_allergy"));
				user.setShellfishAllergy(rs.getBoolean("shellfish_allergy"));
				user.setWheatAllergy(rs.getBoolean("wheat_allergy"));
				user.setSoyAllergy(rs.getBoolean("soy_allergy"));
				user.setTermsAndConditions(rs.getBoolean("terms_and_conditions"));			
			}
			return user;
		} catch (SQLException e) {
			System.out.println(e);
			return null; 		
		} finally {
			try {rs.close();} catch (SQLException e) {}
			try { ps.close(); } catch (SQLException e) {}
			pool.freeConnection(connection);	
		}
	}
	
	public static User selectUserByIduser(int iduser){
		System.out.println("UserDB:seclectUser:Entering");
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection connection = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String query 
			= "SELECT * FROM user" + " WHERE iduser = ?";
		try {
			ps = connection.prepareStatement(query);
			ps.setInt(1, iduser);
			rs = ps.executeQuery();
			User user = null;
			if (rs.next()) {
				user = new User();
				user.setIduser(rs.getInt("iduser"));
				user.setFirstName(rs.getString("first_name"));
				user.setLastName(rs.getString("last_name"));
				user.setEmailAddress(rs.getString("email_address"));
				user.setPassword(rs.getString("password"));
				user.setPhoneNumber(rs.getString("phone_number"));
				user.setPeanutsAllergy(rs.getBoolean("peanuts_allergy"));
				user.setEggsAllergy(rs.getBoolean("eggs_allergy"));
				user.setCowsmilkAllergy(rs.getBoolean("cowsmilk_allergy"));
				user.setTreenutsAllergy(rs.getBoolean("treenuts_allergy"));
				user.setShellfishAllergy(rs.getBoolean("shellfish_allergy"));
				user.setWheatAllergy(rs.getBoolean("wheat_allergy"));
				user.setSoyAllergy(rs.getBoolean("soy_allergy"));
				user.setTermsAndConditions(rs.getBoolean("terms_and_conditions"));			
			}
			return user;
		} catch (SQLException e) {
			System.out.println(e);
			return null; 		
		} finally {
			try {rs.close();} catch (SQLException e) {}
			try { ps.close(); } catch (SQLException e) {}
			pool.freeConnection(connection);	
		}
	}
	
	

	public static int deleteGrubByIdgrub(int idgrub) {
		System.out.println("UserDB:deleteGrubByIdgrub:Entering");
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection connection = pool.getConnection();
		PreparedStatement ps = null;
		int recordsDeleted = -1;
		String query 
			= "DELETE FROM grub WHERE idgrub = ?";
		try {
			ps = connection.prepareStatement(query);
			ps.setInt(1, idgrub);
			recordsDeleted = ps.executeUpdate();
			return recordsDeleted;
		} catch (SQLException e) {
			System.out.println(e);
			return 0;
		} finally {
			try { ps.close(); } catch (SQLException e) {}
			pool.freeConnection(connection);	
		}

	}
	
	

}
