package grubexchange.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import grubexchange.business.Grub;
import grubexchange.business.Offer;
import grubexchange.util.ConnectionPool;

public class OfferDB {
	
	public static int insert(Offer offer){
		System.out.println("OfferDB:insert:Entering");
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection connection = pool.getConnection();
		PreparedStatement psi = null;
		PreparedStatement psu = null;

		try {
			System.out.println("OfferDB:insert:connectionAutoCommit=" + connection.getAutoCommit());
			connection.setAutoCommit(false);
			int recordsInserted = -1;
			System.out.println("OfferDB:insert:offer=" + offer);
			String query 
			= "INSERT INTO offer (offering_iduser, recieving_iduser, offering_idgrub, recieving_idgrub)" 
			+ "VALUES (?, ?, ?, ?)";
			System.out.println("GrubDB:insert:Inserting values");
			psi = connection.prepareStatement(query);
			psi.setInt(1, offer.getOfferingIduser());
			psi.setInt(2, offer.getReceivingIduser());
			psi.setInt(3, offer.getOfferingIdgrub());
			psi.setInt(4, offer.getReceivingIdgrub());
			recordsInserted = psi.executeUpdate();
			System.out.println("OfferDB:insert:recordsInserted for offer = " + recordsInserted);
			System.out.println("OfferDB:insert:inserted the offer " + offer);
			
			int recordsUpdated= -1;
			query = "UPDATE grub SET status = 'HAS_OFFERS' WHERE idgrub = ?";
			psu = connection.prepareStatement(query);
			System.out.println(offer.getReceivingIdgrub());
			psu.setInt(1, offer.getReceivingIdgrub());
			System.out.println("OfferDB:insert:Updating status of grub");
			recordsUpdated = psu.executeUpdate();
			System.out.println("OfferDB:insert:recordsUpdated for grub = " + recordsUpdated);
			System.out.println("OfferDB:insert:updated the grub with idgrub " + offer.getReceivingIdgrub());
			connection.commit();
			return recordsUpdated;
		} catch (SQLException e) {
			System.out.println(e);
			e.printStackTrace();
			return 0;
		} finally {
			System.out.println("GrubDB:insert:Exiting");
			try { psi.close(); psu.close();} catch (SQLException e) {}
			pool.freeConnection(connection);	
		}
	}
	
	public static int insertNonTrasactional(Offer offer){
		System.out.println("OfferDB:insert:Entering");
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection connection = pool.getConnection();
		PreparedStatement ps = null;
		int recordsInserted = -1;
		System.out.println("OfferDB:insert:offer=" + offer);
		String query 
			= "INSERT INTO offer (offering_iduser, recieving_iduser, offering_idgrub, recieving_idgrub)" 
			+ "VALUES (?, ?, ?, ?)";
		try {
			System.out.println("GrubDB:insert:Inserting values");
			ps = connection.prepareStatement(query);
			ps.setInt(1, offer.getOfferingIduser());
			ps.setInt(2, offer.getReceivingIduser());
			ps.setInt(3, offer.getOfferingIdgrub());
			ps.setInt(4, offer.getReceivingIdgrub());
			recordsInserted = ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e);
		} 
		
		int recordsUpdated= -1;
		query 
			= "UPDATE grub SET status = 'HAS_OFFERS' WHERE idgrub = ?";
		try {
			ps = connection.prepareStatement(query);
			System.out.println(offer.getReceivingIdgrub());
			ps.setInt(1, offer.getReceivingIdgrub());
			System.out.println("OfferDB:insert:Updating status of grub");
			recordsUpdated = ps.executeUpdate();
			System.out.println("OfferDB:insert:recordsUpdated for grub = " + recordsUpdated);
			return recordsUpdated;
		} catch (SQLException e) {
			System.out.println(e);
			e.printStackTrace();
			return 0;
		} finally {
			System.out.println("GrubDB:insert:Exiting");
			try { ps.close(); } catch (SQLException e) {}
			pool.freeConnection(connection);	
		}
	}
	
	public static List <Offer> selectOffersByIdgrub(int idgrub){
		System.out.println("OfferDB:selectOffersByIdgrub:entering");
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection connection = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String query 
			= "SELECT * FROM offer WHERE recieving_idgrub = ?";
		try {
			ps = connection.prepareStatement(query);
			ps.setInt(1, idgrub);
			rs = ps.executeQuery();
			List <Offer> offers = new ArrayList<Offer>();
			while (rs.next()) {
				Offer offer = new Offer();
				offer.setIdoffer(rs.getInt("idoffer"));
				offer.setReceivingIdgrub(rs.getInt("recieving_idgrub"));
				offer.setReceivingIduser(rs.getInt("recieving_iduser"));
				offer.setOfferingIdgrub(rs.getInt("offering_idgrub"));
				offer.setOfferingIduser(rs.getInt("offering_iduser"));
				offers.add(offer);
			}
			System.out.println("OfferDB:selectOffersByIdgrub:offers=" + offers);
			return offers;
		} catch (SQLException e) {
			System.out.println(e);
			return null; 		
		} finally {
			try {rs.close();} catch (SQLException e) {}
			try { ps.close(); } catch (SQLException e) {}
			pool.freeConnection(connection);	
		}
	}

	public static Offer selectOfferByIdgrub(int idgrub) {
		System.out.println("OfferDB:selectOfferByIdgrub:entering");
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection connection = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String query 
			= "SELECT * FROM offer WHERE recieving_idgrub = ?";
		try {
			ps = connection.prepareStatement(query);
			ps.setInt(1, idgrub);
			rs = ps.executeQuery();
			Offer offer = new Offer();
			if (rs.next()){
				offer.setIdoffer(rs.getInt("idoffer"));
				offer.setReceivingIdgrub(rs.getInt("recieving_idgrub"));
				offer.setReceivingIduser(rs.getInt("recieving_iduser"));
				offer.setOfferingIdgrub(rs.getInt("offering_idgrub"));
				offer.setOfferingIduser(rs.getInt("offering_iduser"));
			}
			System.out.println("OfferDB:selectOfferByIdgrub:offers=" + offer);
			return offer;
		} catch (SQLException e) {
			System.out.println(e);
			return null; 		
		} finally {
			try {rs.close();} catch (SQLException e) {}
			try { ps.close(); } catch (SQLException e) {}
			pool.freeConnection(connection);	
		}
	}

	
		
		
		
}
	
	



