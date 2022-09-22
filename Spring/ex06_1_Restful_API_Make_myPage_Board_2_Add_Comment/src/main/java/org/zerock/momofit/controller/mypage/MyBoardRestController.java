package org.zerock.momofit.controller.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.momofit.domain.mypage.Criteria;
import org.zerock.momofit.domain.mypage.MyBoardVO;
import org.zerock.momofit.domain.mypage.PageDTO;
import org.zerock.momofit.exception.ControllerException;
import org.zerock.momofit.service.mypage.MyBoardService;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@Log4j2
@AllArgsConstructor

@RestController
@RequestMapping("/mypage/board/")
public class MyBoardRestController {

	
	private MyBoardService myboardService;
	
	
	// 1. myPage 내글 조회하기
	@GetMapping(
			value="/categorys/{category}/pages/{page}",
			consumes = "application/json",
			produces = {
					MediaType.APPLICATION_JSON_VALUE
			})
	public ResponseEntity<Map<String, Object>> getMyPageBoardList(
			@PathVariable("category") int category,
			@PathVariable("page") int page,
			Criteria cri
//			HttpSession session
			) throws ControllerException {
		log.trace("getMyPageBoardList({},{}, {}) invoked.",category, page, cri);
		
		try {			
			
			//Step.1 : Session으로부터 유저 정보 획득하여 Criteria에 저장
			//------------------------------------------------
			// 세션객체로부터, 회원정보 얻기
			int user_no = 1;	// 임시코드 : 1번 User NO조회
			//------------------------------------------------
			cri.setUser_no(user_no);
			
			//Step.2 : ajax로 Client에서 전송받은 변수 바인딩
			cri.setCurrPage(page);
			cri.setCategory(category);
		
			
			//Step.3 : Service계층으로부터, 내글 획득
			List<MyBoardVO> voList = this.myboardService.getBoardList(cri);
			
			//Step.4 : 페이징처리를 위한 PageDTO 객체 생성
			int totalAmount = this.myboardService.getBoardCount(cri);
			log.info("\t+ totalAmount : {}", totalAmount);
			
			PageDTO pageDTO = new PageDTO(cri, totalAmount);
			
			//Step:5 : Response Body에 넣어줄 Map 객체 생성
			Map<String, Object> result = new HashMap<>();
			result.put("voList",  voList);
			result.put("pageDTO", pageDTO);
			
			
			return new ResponseEntity<>(result, HttpStatus.OK);
			
		} catch (Exception e) {
			throw new ControllerException(e);
		}
		
	} // getMypageBoardList
	
	
	// 2. 내글 삭제하기
	@DeleteMapping(
			value = "/articles/{bno}",
			produces = MediaType.TEXT_PLAIN_VALUE
			)
	public ResponseEntity<String> removeMyPageArticle(@PathVariable("bno") int board_no) 
			throws ControllerException {
		log.trace("removeMyPageArticle({}) invoked.", board_no);
		
		try {
			
			boolean result = this.myboardService.removeArtice(board_no);
			
			
			return new ResponseEntity<>(result ? String.valueOf(board_no) : "", HttpStatus.OK);
			
		} catch (Exception e) {
			throw new ControllerException(e);
		} // try-catch
		
	} // remove
	
	
	
} // end class
