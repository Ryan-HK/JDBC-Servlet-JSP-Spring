package org.zerock.myapp;

import java.util.Objects;
import java.util.concurrent.TimeUnit;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.MethodOrderer.OrderAnnotation;
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
import org.zerock.myapp.mapper.TimeMapper;

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
public class Ex02_TimeMapperTests {
	
	@Setter(onMethod_={@Autowired})
	private SqlSessionFactory sqlSessionFactory;

	
	@Test
	@Order(1)
	@DisplayName("1. testTime")
	@Timeout(value=3, unit=TimeUnit.SECONDS)
	void testGetTime1() {
		log.trace("testGetTime1() invoked.");
		
		SqlSession sqlSession = this.sqlSessionFactory.openSession();
		
		try (sqlSession) {
			TimeMapper mapper = sqlSession.getMapper(TimeMapper.class);
			Objects.requireNonNull(mapper);
			log.info("\t+ mapper : {}", mapper);
			
			String time = mapper.getTime();
			log.info("\t+ time : {}", time);
			
		} // try-with-resources
		
	} // testGetTime1
	
	@Test
	@Order(2)
	@DisplayName("2. testTime2")
	@Timeout(value=3, unit=TimeUnit.SECONDS)
	void testGetTime2() {
		log.trace("testGetTime2() invoked.");
		
		SqlSession sqlSession = this.sqlSessionFactory.openSession();
		
		try (sqlSession) {
			TimeMapper mapper = sqlSession.getMapper(TimeMapper.class);
			Objects.requireNonNull(mapper);
			log.info("\t+ mapper : {}", mapper);
			
			String time2 = mapper.getTime2();
			log.info("\t+ time : {}", time2);
			
		} // try-with-resources
		
	} // testGetTime1
	
} // end class











