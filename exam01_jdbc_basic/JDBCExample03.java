package org.zerock.myapp.exam01_jdbc_basic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Arrays;

import lombok.Cleanup;
import lombok.extern.log4j.Log4j2;


@Log4j2
public class JDBCExample03 {
	
	private final static String JDBCURL = "jdbc:oracle:thin:@db20220510180830_high?TNS_ADMIN=C:/opt/OracleCloudWallet/Wallet_DB20220510180830";
	private final static String USER = "HR";
	private final static String PASS = "Oracle12345678";
	
	public static void main(String[] args) {
		log.trace("main({}) invoked", Arrays.toString(args));
		
		try {
			@Cleanup Connection conn = DriverManager.getConnection(JDBCURL, USER, PASS);
			@Cleanup Statement stmt = conn.createStatement();
			
			String sql = "SELECT current_date FROM dual";
			@Cleanup ResultSet rs = stmt.executeQuery(sql);
			

			if(rs.next()) {
				Timestamp now = rs.getTimestamp("current_date");
				log.info("\t+ now: {} ", now);
			}
			 
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
	} // main

} // end class
