package org.zerock.momofit.controller.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.momofit.domain.mypage.Criteria;
import org.zerock.momofit.domain.mypage.MyQnaVO;
import org.zerock.momofit.domain.mypage.MyReportVO;
import org.zerock.momofit.domain.mypage.PageDTO;
import org.zerock.momofit.exception.ControllerException;
import org.zerock.momofit.service.mypage.MyCSService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@AllArgsConstructor

@RestController
@RequestMapping("/mypage/cs/")
public class MyCSRestController {

	private MyCSService myCSService;

	// 1. QNA 글 리스트 조회
	@GetMapping(
			value = "/qna/results/{result}/pages/{page}",
			produces = {
					MediaType.APPLICATION_JSON_VALUE
					}
			)
	public ResponseEntity<Map<String, Object>> getMyPageQnaList(
			@PathVariable("result") int result,
			@PathVariable("page") int page
			) throws ControllerException{
		log.trace("getMyPageQnaList({}, {}, {}) invoked.", result, page);
	
		try {
			// Step.1 : 유저정보 획득
			int user_no = 1;
			
			Criteria cri = new Criteria();
			
			cri.setUser_no(user_no);
			
			// Step.2 : ajax로 Client에서 전송받은 객체 바인딩
			cri.setCurrPage(page);
			cri.setCategory(result);
			cri.setAmount(5);		// Qna에서는 한 Page당 5 
			
			// Step.3 : Service계층에서, 내 글 획득
			List<MyQnaVO> voList = this.myCSService.getQnaList(cri);
			
			// Step.4 : 페이징 처리를 위한 PageDTO 객체 생성
			int totalAmount = this.myCSService.getQnaCount(cri);
			
			PageDTO pageDTO = new PageDTO(cri, totalAmount);
			
			// Step.5 : ResponseBody에 넣어줄 맵객체 생성
			Map<String, Object> mapResult = new HashMap<>();
			
			mapResult.put("voList", voList);
			mapResult.put("pageDTO", pageDTO);
			
			return new ResponseEntity<>(mapResult, HttpStatus.OK);
			
		} catch (Exception e) {
			throw new ControllerException(e);
		}
	} // getMyPageQnaList
	
	
	// 2. QNA 글 삭제
	@DeleteMapping(
			value = "/qna/articles/{qno}",
			produces = MediaType.TEXT_PLAIN_VALUE
			)
	public ResponseEntity<String> removeMyPageQna(
			@PathVariable("qno") int qna_no
			) throws ControllerException{
		log.trace("removeMyPageQna() invoked.");
		
		try {
			
			boolean result = this.myCSService.removeQna(qna_no);
			
			return new ResponseEntity<>(result ? String.valueOf(qna_no) : "", HttpStatus.OK);
			
		} catch (Exception e) {
			throw new ControllerException(e);
		}
		
	} // removeMyPageQna
	
	
	
	// 3. Report 글 리스트 조회
	@GetMapping(
			value = "/report/results/{result}/pages/{page}",
			produces = {
					MediaType.APPLICATION_JSON_VALUE
					}
			)
	public ResponseEntity<Map<String, Object>> getMyPageReportList(
			@PathVariable("result") int result,
			@PathVariable("page") int page
			) throws ControllerException{
		log.trace("getMyPageReportList({}, {}, {}) invoked.", result, page);
	
		try {
			// Step.1 : 유저정보 획득
			int user_no = 1;
			
			Criteria cri = new Criteria();
			
			cri.setUser_no(user_no);
			
			// Step.2 : ajax로 Client에서 전송받은 객체 바인딩
			cri.setCurrPage(page);
			cri.setCategory(result);
			cri.setAmount(5);		// Qna에서는 한 Page당 5 
			
			// Step.3 : Service계층에서, 내 글 획득
			List<MyReportVO> voList = this.myCSService.getReportList(cri);
			
			// Step.4 : 페이징 처리를 위한 PageDTO 객체 생성
			int totalAmount = this.myCSService.getReportCount(cri);
			
			PageDTO pageDTO = new PageDTO(cri, totalAmount);
			
			// Step.5 : ResponseBody에 넣어줄 맵객체 생성
			Map<String, Object> mapResult = new HashMap<>();
			
			mapResult.put("voList", voList);
			mapResult.put("pageDTO", pageDTO);
			
			return new ResponseEntity<>(mapResult, HttpStatus.OK);
			
		} catch (Exception e) {
			throw new ControllerException(e);
		}
	} // getMyPageReportList
	
	
	
	// 4. Report 글 삭제
	@DeleteMapping(
			value = "/report/articles/{rno}",
			produces = MediaType.TEXT_PLAIN_VALUE
			)
	public ResponseEntity<String> removeMyPageReport(
			@PathVariable("rno") int report_no
			) throws ControllerException{
		log.trace("removeMyPageReport() invoked.");
		
		try {
			
			boolean result = this.myCSService.removeReport(report_no);
			
			return new ResponseEntity<>(result ? String.valueOf(report_no) : "", HttpStatus.OK);
			
		} catch (Exception e) {
			throw new ControllerException(e);
		}
		
	} // removeMyPageQna
	
} // end class
