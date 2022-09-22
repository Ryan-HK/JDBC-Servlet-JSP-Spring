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
import org.zerock.momofit.domain.mypage.MyCommentVO;
import org.zerock.momofit.exception.DAOException;
import org.zerock.momofit.exception.ServiceException;
import org.zerock.momofit.mapper.mypage.MyCommentMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {
		"file:src/main/webapp/WEB-INF/**/*-context.xml"
})

@TestInstance(Lifecycle.PER_CLASS)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class MyCommnetMapperTests {

	@Setter(onMethod_={@Autowired})
	private MyCommentMapper mapper;
	
	//----------------------------------------------------
	//1. myPage Comment List 얻기 (+ 페이징처리)
	//----------------------------------------------------
//	@Disabled
	@Test
	@Order(1)
	@DisplayName("1. testGetCommentList()")
	public void testGetCommentList() throws DAOException {
		log.trace("testGetCommentList() invoked.");
		
		Criteria cri = new Criteria();
		cri.setUser_no(1);
		
		int totalAmount = this.mapper.getMyCommentCount(cri);
		log.info("\t+ totalAmount : {}", totalAmount);
		cri.setAmount(totalAmount);
		cri.setCategory(3);
		cri.setCurrPage(1);
		
		List<MyCommentVO> list = this.mapper.getMyCommentListWithPaging(cri);
		log.info("\t+ MyCommentList : {}", list);
		
	} // testGetBoardList

	
	
} // end class
