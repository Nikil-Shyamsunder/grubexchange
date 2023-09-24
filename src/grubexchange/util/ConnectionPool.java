package grubexchange.util;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnectionPool {
	
	private static ConnectionPool pool = null;
	private static DataSource dataSource = null;
	
	private ConnectionPool() {
		System.out.println("initializing ConnectionPool object");
			InitialContext ic;
			try {
				ic = new InitialContext();
				dataSource = (DataSource) ic.lookup("java:/comp/env/jdbc/grubexchangedb");
			} catch (NamingException e) {
				e.printStackTrace();
			}			
	}
	
	public static synchronized ConnectionPool getInstance(){
		System.out.println("in the getInstance method");
		if (pool == null){
			pool = new ConnectionPool();
		}
		return pool;
		
	}
	
	public Connection getConnection(){
		System.out.println("in the getConnection method");
		try {
			return dataSource.getConnection();
		} catch (SQLException e) {
			System.out.println(e);
			return null;
		}		
	}

	public void freeConnection(Connection c){
		System.out.println("in the freeConnection method");
		try {
			c.close();
		} catch (SQLException e) {
			System.out.println(e);
			
		}
	} 

}
