package org.zerock.myapp.persistence;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestInstance.Lifecycle;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.api.Timeout;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.zaxxer.hikari.HikariDataSource;

import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor


// For JUnit 4
//@RunWith(SpringRunner.class)
//@RunWith(SpringJUnit4ClassRunner.class)

// For JUnit 5
@ExtendWith(SpringExtension.class)

@ContextConfiguration(locations = {
		"file:src/main/webapp/WEB-INF/spring/root-context.xml"
})



@TestInstance(Lifecycle.PER_CLASS)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class HikariDataSourceTests {
	
	private static final String HikariDataSource = null;
	
//	@Autowired
	
	// 주입가능한 빈 객체가 2가지 이상일 때, @Resource 어노테이션을 사용하여 type 지정을 해주면, 객체를 선택할 수 있다.
	@Setter(onMethod_={@Resource(type=HikariDataSource.class)}) 
	private DataSource dataSource;
	
	// 1. 선처리 (Pre-processing) 작업 : 필드에 원하는 타입의 빈(Bean) 객체가 잘 주입(DI) 되었는 지 확인
	@BeforeAll
	void beforeAll() {
		log.trace("beforeAll() invoked.");
		
		// 1. 필드에 의존성 객체가 잘 주입되었는 지 확인
		Objects.requireNonNull(this.dataSource);
		log.info("\t+ this.dataSource : {}", dataSource);
		
	}
	
	@Test
	@Order(1)
	@DisplayName("1. javax.sql.DataSource.getConnection() method test.")
	@Timeout(value=3, unit=TimeUnit.SECONDS)
	void testGetConnection() throws SQLException {
		log.trace("testGetConnection() invoked.");
		
		
		Connection conn = this.dataSource.getConnection();
		Objects.requireNonNull(conn);
		log.info("\t+ conn : {}, type : {}", conn, conn.getClass().getName());
		
		conn.close();
	} // testGetConnection
	
	
	@Test
	@Order(2)
	@DisplayName("2. javax.sql.DataSource.getConnection() method with SQL test.")
	@Timeout(value=3, unit=TimeUnit.SECONDS)
	void testGetConnectionWithSQL() throws SQLException {
		log.trace("testGetConnection() invoked.");
		
		
		Connection conn = this.dataSource.getConnection();
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery("SELECT * FROM employees ORDER BY employee_id DESC");
		
		try (conn; stmt; rs;){
			
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
			} // while
			
		} // try-with-resources
		
	} // testGetConnection
	
	
	@AfterAll
	void afterAll() {
		log.trace("afterAll() invoked.");
		
//		((HikariDataSource)this.dataSource).close();
	}

} // end class
