package grubexchange.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import grubexchange.business.Grub;
import grubexchange.util.ConnectionPool;

public class GrubDB {
	
	public static int insert(Grub grub){
		System.out.println("GrubDB:insert:Entering");
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection connection = pool.getConnection();
		PreparedStatement ps = null;
		int recordsInserted = -1;
		System.out.println("GrubDB:insert:grub=" + grub);
		String query 
			= "INSERT INTO grub (iduser, name, description, contains_peanuts, contains_eggs, contains_cowsmilk, contains_treenuts, contains_shellfish, contains_wheat, contains_soy, status)" 
			+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			System.out.println("GrubDB:insert:Inserting values");
			ps = connection.prepareStatement(query);
			ps.setInt(1, grub.getIduser());
			ps.setString(2, grub.getName());
			ps.setString(3, grub.getDescription());
			ps.setBoolean(4, grub.isContainsPeanuts());
			ps.setBoolean(5, grub.isContainsEggs());
			ps.setBoolean(6, grub.isContainsCowsmilk());
			ps.setBoolean(7, grub.isContainsTreenuts());
			ps.setBoolean(8, grub.isContainsShellfish());
			ps.setBoolean(9, grub.isContainsWheat());
			ps.setBoolean(10, grub.isContainsSoy());
			ps.setString(11, grub.getStatus());
			recordsInserted = ps.executeUpdate();
			return recordsInserted;
		} catch (SQLException e) {
			System.out.println(e);
			return 0;
		} finally {
			System.out.println("GrubDB:insert:Exiting");
			try { ps.close(); } catch (SQLException e) {}
			pool.freeConnection(connection);	
		}
	}
	
	public static List <Grub> selectGrubsByIduser(int iduser){
		System.out.println("GrubDB:selectGrubsByIduser:Entering");
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection connection = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String query 
			= "SELECT * FROM grub WHERE iduser = ?";
		try {
			ps = connection.prepareStatement(query);
			ps.setInt(1, iduser);
			rs = ps.executeQuery();
			List <Grub> grubs = new ArrayList<Grub>();
			while (rs.next()) {
				Grub grub = new Grub();
				grub.setIdgrub(rs.getInt("idgrub"));
				grub.setIduser(rs.getInt("iduser"));
				grub.setName(rs.getString("name"));
				grub.setDescription(rs.getString("description"));
				grub.setContainsPeanuts(rs.getBoolean("contains_peanuts"));
				grub.setContainsEggs(rs.getBoolean("contains_eggs"));	
				grub.setContainsCowsmilk(rs.getBoolean("contains_cowsmilk"));	
				grub.setContainsTreenuts(rs.getBoolean("contains_treenuts"));	
				grub.setContainsShellfish(rs.getBoolean("contains_shellfish"));	
				grub.setContainsWheat(rs.getBoolean("contains_wheat"));
				grub.setContainsSoy(rs.getBoolean("contains_soy"));	
				grub.setStatus(rs.getString("status"));
				grubs.add(grub);
			}
			System.out.println("GrubDB:selectGrubsByIduser:grubs=" + grubs);
			return grubs;
		} catch (SQLException e) {
			System.out.println(e);
			return null; 		
		} finally {
			try {rs.close();} catch (SQLException e) {}
			try { ps.close(); } catch (SQLException e) {}
			pool.freeConnection(connection);	
		}
	}
	
	public static Grub selectGrubByIdgrub(int idgrub){
		System.out.println("GrubDB:selectGrubByIduser:Entering");
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection connection = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String query 
			= "SELECT * FROM grub WHERE idgrub = ?";
		try {
			ps = connection.prepareStatement(query);
			ps.setInt(1, idgrub);
			rs = ps.executeQuery();
			Grub grub = new Grub();
			if (rs.next()) {
				System.out.println("GrubDB:selectGrubByIduser:In if");
				grub.setIdgrub(rs.getInt("idgrub"));
				grub.setIduser(rs.getInt("iduser"));
				grub.setName(rs.getString("name"));
				grub.setDescription(rs.getString("description"));
				grub.setContainsPeanuts(rs.getBoolean("contains_peanuts"));
				grub.setContainsEggs(rs.getBoolean("contains_eggs"));	
				grub.setContainsCowsmilk(rs.getBoolean("contains_cowsmilk"));	
				grub.setContainsTreenuts(rs.getBoolean("contains_treenuts"));	
				grub.setContainsShellfish(rs.getBoolean("contains_shellfish"));	
				grub.setContainsWheat(rs.getBoolean("contains_wheat"));
				grub.setContainsSoy(rs.getBoolean("contains_soy"));	
				grub.setStatus(rs.getString("status"));
				}
			System.out.println("GrubDB:selectGrubsByIduser:grub=" + grub);
			return grub;
		} catch (SQLException e) {
			System.out.println(e);
			return null; 		
		} finally {
			try {rs.close();} catch (SQLException e) {}
			try { ps.close(); } catch (SQLException e) {}
			pool.freeConnection(connection);	
		}
	}
	
	public static List <Grub> selectOtherGrubs(int iduser){
		System.out.println("GrubDB:selectOtherGrubs:Entering");
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection connection = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String query 
			= "SELECT * FROM grub WHERE iduser != ?";
		System.out.println(query);
		try {
			ps = connection.prepareStatement(query);
			ps.setInt(1, iduser);
			rs = ps.executeQuery();
			List <Grub> grubs = new ArrayList<Grub>();
			while (rs.next()) {
				Grub grub = new Grub();
				grub.setIdgrub(rs.getInt("idgrub"));
				grub.setIduser(rs.getInt("iduser"));
				grub.setName(rs.getString("name"));
				grub.setDescription(rs.getString("description"));
				grub.setContainsPeanuts(rs.getBoolean("contains_peanuts"));
				grub.setContainsEggs(rs.getBoolean("contains_eggs"));	
				grub.setContainsCowsmilk(rs.getBoolean("contains_cowsmilk"));	
				grub.setContainsTreenuts(rs.getBoolean("contains_treenuts"));	
				grub.setContainsShellfish(rs.getBoolean("contains_shellfish"));	
				grub.setContainsWheat(rs.getBoolean("contains_wheat"));
				grub.setContainsSoy(rs.getBoolean("contains_soy"));
				grub.setStatus(rs.getString("status"));
				grubs.add(grub);
				System.out.println(grub);
			}
			return grubs;
		} catch (SQLException e) {
			System.out.println(e);
			return null; 		
		} finally {
			try {rs.close();} catch (SQLException e) {}
			try { ps.close(); } catch (SQLException e) {}
			pool.freeConnection(connection);	
		}
	}

	public static int confirmOffer(int idgrub) {
		System.out.println("GrubDB:confirmOffer:Entering");
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection connection = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		int recordsUpdated= -1;
		String query = "UPDATE grub SET status = 'OFFER_ACCEPTED' WHERE idgrub = ?";
		try {
			ps = connection.prepareStatement(query);
			ps.setInt(1, idgrub);
			System.out.println("GrubDB:confirmOffer:Updating status of grub");
			recordsUpdated = ps.executeUpdate();
			System.out.println("GrubDB:confirmOffer:recordsUpdated for grub = " + recordsUpdated);
			return recordsUpdated;
		} catch (SQLException e) {
			System.out.println(e);
			e.printStackTrace();
			return 0;
		} finally {
			System.out.println("GrubDB:confirmOffer:Exiting");
			try { ps.close(); } catch (SQLException e) {}
			pool.freeConnection(connection);	
		}
	}

}
