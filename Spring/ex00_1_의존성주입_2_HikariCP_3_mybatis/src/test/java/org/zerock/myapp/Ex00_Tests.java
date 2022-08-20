package org.zerock.myapp;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.concurrent.TimeUnit;

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

import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

// TEST 코드 작성 시, 필요한 어노테이션 
@Log4j2					// Log출력을 위한 Log4j2 
@NoArgsConstructor		// 기본 Default 생성자 

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations= {
//		필요한 스프링 설정파일을 등록해줌. 이때, file: 이 사용되는데,
//		이 file: 의 의미는 "프로젝트 폴더와 같음
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})


@TestInstance(Lifecycle.PER_CLASS)		// Instance를 Class단위로 생성

@TestMethodOrder(OrderAnnotation.class)		// 테스트 순서 작성
public class Ex00_Tests {
	
	// 현재 이 Test에는 Restaurant 객체가 필요하다.
	// 이를 위해, Setter를 통해 객체를 주입받는다
	@Setter(onMethod_ = {@Autowired})
	private Restaurant restaurant;
	
	@Test
	@Order(1)
	@DisplayName("1. testExist")
	@Timeout(value=3, unit=TimeUnit.SECONDS)
	public void testExist() {
		log.trace("testExise() invoked.");
		
		assertNotNull(restaurant);
		log.info("retaurant : {}", restaurant);
		log.info("restaurant.getChef()", restaurant.getChef());
		
	} // testExist

} // end class
