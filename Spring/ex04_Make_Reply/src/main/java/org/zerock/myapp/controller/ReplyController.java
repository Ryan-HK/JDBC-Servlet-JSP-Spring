package org.zerock.myapp.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.myapp.domain.ReplyDTO;
import org.zerock.myapp.domain.ReplyVO;
import org.zerock.myapp.exception.ControllerException;
import org.zerock.myapp.service.ReplyService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@RequestMapping("/replies")
@RestController

@Log4j2
@AllArgsConstructor
public class ReplyController {

	private ReplyService service;
	
	
	//-- 1. 댓글을 등록
	
	//-- consumes : 서버로 부터 들어오는 데이터타입을 지정
	//				즉 json타입만 처리하는 것을 지정하였다.
	//-- produces : 댓글의 처리결과가 정상적으로 처리되었는 지, 문자열로알려준다.
	//-- @RequestBody : 서버로 부터 Body에 들어오는 json타입을 ReplyVO로 변환
	@PostMapping(
			value = "/new",
			consumes = "application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE}
			)
	public ResponseEntity<String> create(@RequestBody ReplyDTO dto) throws ControllerException{
		log.info("create({}) invoked.", dto);
		
		try {
			boolean result = this.service.register(dto);
			
			return result? new ResponseEntity<>("success", HttpStatus.OK)
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
			
		} catch(Exception e) {
			throw new ControllerException(e);
		} // try-catch
			
	} // create
	
	
	//-- 2. 특정 게시물의 댓글 목록 획득
	public ResponseEntity<List<ReplyVO>> getList(){
		
		
		return null;
	} // getList
	
	
} // end class
