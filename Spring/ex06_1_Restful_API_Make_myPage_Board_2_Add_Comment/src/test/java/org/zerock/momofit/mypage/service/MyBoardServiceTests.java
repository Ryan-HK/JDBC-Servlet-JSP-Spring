package org.zerock.momofit.mypage.service;

import java.util.List;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestInstance.Lifecycle;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.zerock.momofit.domain.mypage.Criteria;
import org.zerock.momofit.domain.mypage.MyBoardVO;
import org.zerock.momofit.exception.ServiceException;
import org.zerock.momofit.service.mypage.MyBoardService;

import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {
		"file:src/main/webapp/WEB-INF/**/*-context.xml"
})

@TestInstance(Lifecycle.PER_CLASS)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class MyBoardServiceTests {

	@Setter(onMethod_={@Autowired})
	private MyBoardService service;
	
	//----------------------------------------------------
	//1. myPage BoardList 얻기 (+ 페이징처리)
	//----------------------------------------------------
//	@Disabled
	@Test
	@Order(1)
	@DisplayName("1. getBoardList()")
	public void testGetBoardList() throws ServiceException {
		log.trace("testGetBoardList() invoked.");
		
		Criteria cri = new Criteria();
		cri.setUser_no(1);
		
		List<MyBoardVO> list = this.service.getBoardList(cri);
		
		list.forEach(log::info);
		
	} // testGetBoardList
	
	//----------------------------------------------------
	//2. myPage 내 글  총 개수 구하기
	//----------------------------------------------------
//	@Disabled
	@Test
	@Order(2)
	@DisplayName("1. testGetBoardCount()")
	public void testGetBoardCount() throws ServiceException {
		log.trace("testGetBoardList() invoked.");
		
		Criteria cri = new Criteria();
		cri.setUser_no(1);
		
		int boardCount = this.service.getBoardCount(cri);
		log.info("\t+ boardCount : {}", boardCount);
		
	} // testGetBoardList
	
	
} // end class
