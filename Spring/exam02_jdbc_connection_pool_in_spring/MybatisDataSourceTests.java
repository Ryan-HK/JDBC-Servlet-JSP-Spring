package org.zerock.myapp.persistence;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.zaxxer.hikari.HikariDataSource;

import lombok.NoArgsConstructor;
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
public class MybatisDataSourceTests {
	
	private static final String HikariDataSource = null;
	@Autowired
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
	
	
	@AfterAll
	void afterAll() {

	}

} // end class
