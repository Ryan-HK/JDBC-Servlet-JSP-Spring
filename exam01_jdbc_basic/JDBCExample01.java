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
public class JDBCExample01 {
	
	//Step.1 : JDBC Driver에 필요한 필수 연결정보 선언
	private static String jdbcUrl = "jdbc:oracle:thin:@db20220510180830_high?TNS_ADMIN=C:/opt/OracleCloudWallet/Wallet_DB20220510180830";
	private static String driverClass = "oracle.jdbc.OracleDriver";
	private static String user = "HR";
	private static String pass = "Oracle12345678";
	
	public static void main(String[] args) {
		log.trace("main({}) invoked", Arrays.toString(args));
		
		//Step.2 : JDBC를 위한 지역변수 선언
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			//Step.3 : JDBC Driver Class 등록
			Class.forName(driverClass);
			
			//Step.4 : DriverManager을 통한 연결정보 얻기
			//Connection객체를 반환
			conn = DriverManager.getConnection(jdbcUrl, user, pass);
			
			//Step.5 : Connection 객체로부터 Statement 객체 생성
			//Statement 객체를 반환
			stmt = conn.createStatement();
			
			//Step.6 : Statement 실행 (SQL쿼리문을 DB 서버쪾으로 전송)
			String sql = "SELECT current_date FROM dual";
			rs = stmt.executeQuery(sql);
			
			//Step.7 : ResultSet을 이용하여, 각 레코드별로, 각 컬럼의 값 출력
			while(rs.next()) {
				Timestamp now = rs.getTimestamp("current_date");
				log.info("\t+ now : {}", now);
			} // while
			
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			// Step8 : 자원객체를 모두 해제 : 순서가 중요하다
			// ResultSet > Statement > Connection
			try {
				if(rs != null && !rs.isClosed()) rs.close();
			} catch (SQLException e) {;;}
			
			try {
				if(stmt != null && !stmt.isClosed()) stmt.close();
			} catch (SQLException e) {;;}
			
			try {
				if(conn != null && !conn.isClosed()) conn.close();
			} catch (SQLException e) {;;}
			
		} // try-catch-finally

	} // main

} // end class
