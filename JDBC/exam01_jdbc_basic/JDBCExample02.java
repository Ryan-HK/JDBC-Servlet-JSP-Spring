package org.zerock.myapp.exam01_jdbc_basic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Arrays;

import lombok.extern.log4j.Log4j2;


@Log4j2
public class JDBCExample02 {
	
	private static String jdbcUrl = "jdbc:oracle:thin:@db20220510180830_high?TNS_ADMIN=C:/opt/OracleCloudWallet/Wallet_DB20220510180830";
	private static String user = "HR";
	private static String pass = "1";
	
	public static void main(String[] args) {
		log.trace("main({}) invoked", Arrays.toString(args));

		
		try {

			Connection conn = DriverManager.getConnection(jdbcUrl, user, pass);

			Statement stmt = conn.createStatement();
			
			String sql = "SELECT current_date FROM dual";
			ResultSet rs = stmt.executeQuery(sql);
			
			try (conn; stmt; rs;){		
				if(rs.next()) {				
					Timestamp now = rs.getTimestamp("current_date");
					log.info("\t+ now : {}", now);			
				} // while				
			} 			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
	} // main

} // end class
