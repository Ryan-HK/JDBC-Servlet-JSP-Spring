package org.zerock.momofit.controller.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.momofit.domain.mypage.Criteria;
import org.zerock.momofit.domain.mypage.MyGroupVO;
import org.zerock.momofit.domain.mypage.PageDTO;
import org.zerock.momofit.exception.ControllerException;
import org.zerock.momofit.service.mypage.MyGroupService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;


@Log4j2
@AllArgsConstructor

@RestController
@RequestMapping("/mypage/group/")
public class MyGroupRestController {

	
	private MyGroupService myGroupService;
	
	
	@GetMapping(
			value="/pages/{page}",
			produces = {
					MediaType.APPLICATION_JSON_VALUE
					}
			)
	public ResponseEntity<Map<String, Object>> getMyPageGroupList(
			@PathVariable("page") int page
			) throws ControllerException {
		log.trace("getMyPageGroupList({}) invoked.", page);
		
		try {
			
			// Step.1 : 유저정보 획득
			int user_no = 1;
			
			Criteria cri = new Criteria();
			cri.setUser_no(user_no);
			
			
			// Step.2 : ajax로 Client에서 전송받은 객체 바인딩
			// (1) 현재페이지
			cri.setCurrPage(page);
			cri.setAmount(3);
			
			// Step.3 : Service계층에서, 내가 참여한 "그룹"목록 획득
			List<MyGroupVO> voList = this.myGroupService.getGroupList(cri);
			
			// Step.4 : 페이징 처리를 위한 PageDTO 객체 생성
			int totalAmount = this.myGroupService.getGroupCount(user_no);
			
			PageDTO pageDTO = new PageDTO(cri, totalAmount);
			
			// Step.5 : ResponseBody에 넣어줄 맵객체 생성
			Map<String, Object> result = new HashMap<>();
			
			result.put("voList", voList);
			result.put("pageDTO", pageDTO);
			log.info("result : {}, {}", result);
			
			return new ResponseEntity<>(result, HttpStatus.OK);
			
		} catch (Exception e) {
			throw new ControllerException(e);
		}
		
		
	} // getMyPageGroupList
	
	
} // end class
