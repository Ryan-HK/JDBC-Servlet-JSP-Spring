package org.zerock.momofit.mypage.mapper;

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
import org.zerock.momofit.domain.mypage.MyQnaVO;
import org.zerock.momofit.domain.mypage.MyReportVO;
import org.zerock.momofit.exception.DAOException;
import org.zerock.momofit.mapper.mypage.MyCSMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j2;


@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {
		"file:src/main/webapp/WEB-INF/**/*-context.xml"
})

@TestInstance(Lifecycle.PER_CLASS)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class MyCSMapperTests {
	
	
	@Setter(onMethod_={@Autowired})
	private MyCSMapper myCSMapper;
	
	//----------------------------------------------------
	//1. myPage Qna List 얻기 (+ 페이징처리)
	//----------------------------------------------------
//	@Disabled
	@Test
	@Order(1)
	@DisplayName("1. testGetCSQnaList()")
	public void testGetCSQnaList() throws DAOException {
		log.trace("testGetCommentList() invoked.");
		
		Criteria cri = new Criteria();
		cri.setUser_no(1);
		cri.setAmount(5);
		
		cri.setCategory(-1);
		
		int totalAmount = this.myCSMapper.getQnaCount(cri);
		log.info("\t+ totalAmout : {}", totalAmount);
		
		cri.setCurrPage(1);
		
		List<MyQnaVO> list = this.myCSMapper.getQnaListWithPaging(cri);
		log.info("\t+ MyCommentList : {}", list);
		
	} // testGetCSQnaList
	
	
	
	
	//----------------------------------------------------
	//1. myPage Report List 얻기 (+ 페이징처리)
	//----------------------------------------------------
//	@Disabled
	@Test
	@Order(2)
	@DisplayName("1. testGetCSQnaList()")
	public void testGetReportQnaList() throws DAOException {
		log.trace("testGetCommentList() invoked.");
		
		Criteria cri = new Criteria();
		cri.setUser_no(1);
		cri.setAmount(5);
		
		cri.setCategory(-1);
		
		int totalAmount = this.myCSMapper.getReportCount(cri);
		log.info("\t+ totalAmout : {}", totalAmount);
		
		cri.setCurrPage(1);
		
		List<MyReportVO> list = this.myCSMapper.getReportListWithPaging(cri);
		log.info("\t+ MyCommentList : {}", list);
		
	} // testGetCSQnaList
	

} // end class
