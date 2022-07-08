package org.zerock.myapp.exam02_dynamic_and_prepared_sql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Arrays;

import lombok.Cleanup;
import lombok.extern.log4j.Log4j2;


@Log4j2
public class JDBCExample04 {
	
	private final static String JDBCURL = "jdbc:oracle:thin:@db20220510180830_high?TNS_ADMIN=C:/opt/OracleCloudWallet/Wallet_DB20220510180830";
	private final static String USER = "HR";
	private final static String PASS = "Oracle12345678";
	
	public static void main(String[] args) {
		log.trace("main({}) invoked", Arrays.toString(args));
		
		try {
			@Cleanup Connection conn = DriverManager.getConnection(JDBCURL, USER, PASS);
			String sql = "SELECT employee_id, first_name FROM employees WHERE employee_id >= ? ORDER BY employee_id ASC";
			
			// Step.1 : PreparedStatement를 이용하여, SQL문을 먼저 cache에 저장한다.
			// 이후 쿼리 반복시, 해당 SQL문을 parse과정을 거친 결과를 '재사용'한다.
			@Cleanup PreparedStatement pstmt = conn.prepareStatement(sql);
			
			// Step.2 : 자주 바뀌는 변수를 바인딩하기 위해 setxxx() 메소드 사용
			pstmt.setInt(1, 120);
			
			// Step.3 : execute 실행
			@Cleanup ResultSet rs = pstmt.executeQuery();
			
			int cnt = 0;
			
			while(rs.next()) {
				Integer EMPLOYEE_ID = rs.getInt("employee_id");
				String FIRST_NAME = rs.getString("first_name");
				
				log.info("EMLOYEE_ID : {}, FIRST_NAME : {}", EMPLOYEE_ID, FIRST_NAME);
				cnt++;
			} // while
			 
			log.info("총 인원 수 : {}명", cnt);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
	} // main

} // end class
