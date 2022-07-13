package org.zerock.myapp.exam03_practice01_make_select_query;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import lombok.Cleanup;
import lombok.extern.log4j.Log4j2;


@Log4j2
public class MakeSelect_Qyuery {
	
	private static String jdbcUrl = "jdbc:oracle:thin:@db20220510180830_high?TNS_ADMIN=C:/opt/OracleCloudWallet/Wallet_DB20220510180830";
	private static String user = "HR";
	private static String PASS = "1";
	
	public static void main(String[] args) {
		
		try {
			@Cleanup Connection conn = DriverManager.getConnection(jdbcUrl, user, PASS);
			
			String sql = "SELECT * FROM employees WHERE salary >= ? AND employee_id >= ? ORDER BY employee_id";
			
			@Cleanup PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setDouble(1,  7000);
			pstmt.setInt(2, 50);
			
			@Cleanup ResultSet rs = pstmt.executeQuery();
			
			int cnt = 0;
			
			while(rs.next()) {
				Integer EMPLOYEE_ID = rs.getInt("employee_id");
				String First_NAME = rs.getString("first_name");
				String LAST_NAME = rs.getString("last_name");
				String EMAIL = rs.getString("email");
				String PHONE_NUMBER = rs.getString("phone_number");
				Date HIRE_DATE = rs.getDate("hire_date");
				String JOB_ID = rs.getString("job_id");
				Double SALARY = rs.getDouble("SALARY");
				Double COMMISSION_PCT = rs.getDouble("commission_pct");
				Integer MANEGER_ID = rs.getInt("manager_id");
				Integer DEPARTMENT_ID = rs.getInt("Department_id");
				
				String employee =
						String.format("%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s",
								EMPLOYEE_ID, First_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, 
								HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANEGER_ID, 
								DEPARTMENT_ID);
				
				log.info("Employee : {}", employee);
				cnt++;
			}
			
			log.info("총 인원 : {}명", cnt);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	} // main

} // end class
