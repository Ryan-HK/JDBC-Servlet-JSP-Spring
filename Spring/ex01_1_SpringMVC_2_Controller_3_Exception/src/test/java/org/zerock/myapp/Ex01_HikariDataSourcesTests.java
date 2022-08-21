package org.zerock.myapp;


import java.sql.Connection;
import java.sql.SQLException;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.MethodOrderer.OrderAnnotation;
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


@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {
		"file:src/main/webapp/WEB-INF/spring/root-context.xml"
})

@TestInstance(Lifecycle.PER_CLASS)
@TestMethodOrder(OrderAnnotation.class)
public class Ex01_HikariDataSourcesTests {
	

	
	// -. 주입가능한 빈 객체가 2가지 이상일 때, @Resource 어노테이션을 사용하여
	// 지정이 가능하다.
	// -. 지금 root-context.xml에는 HikariDataSource밖에 없지만,
	// 추후 다양한 DataSource를 사용할 수 있기에 이 방법을 사용하였다.
	@Setter(onMethod_={@Resource(type=HikariDataSource.class)}) 
	private DataSource dataSource;
	
	@BeforeAll
	void beforeAll() {
		log.trace("beforeAll() invoked.");
		
		// 1. 필드에 의존성 객체가 잘 주입되었는 지 확인하는 코드
		Objects.requireNonNull(this.dataSource);
		log.info("\t+ this.dataSource : {}", dataSource);
		
	} // beforeAll
	
	@Test
	@Order(1)
	@DisplayName("1. javax.sql.DataSource.getConnection() method test.")
	@Timeout(value=3, unit=TimeUnit.SECONDS)
	void testGetConnection() throws SQLException {
		log.trace("testGetConnection() invoked.");
		
		Connection conn = this.dataSource.getConnection();
		Objects.requireNonNull(conn);
		
		
		
	} // testGetConnection
	
	@AfterAll
	void afterAll() {
		log.trace("afterAll() invoked.");
		
		((HikariDataSource)this.dataSource).close();
	}
	
	
} // end class
