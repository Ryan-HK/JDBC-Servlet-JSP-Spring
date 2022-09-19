package org.zerock.momofit.controller.center;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@RequestMapping("/center/notice")
@Controller
public class NoticeBoardController {
	
	// 공지목록
	@GetMapping("/list")
	public void list() {
		log.trace("noticeboard() invoked.");
		
		
	} // noticeboard
	
	
	@GetMapping("/view")
	public String view() {
		log.trace("view() invoked.");
		
		// 리턴값 문자열로 해당 경로와 파일명으로 바꿔줘야함
		return "/center/notice/main_board_notice";
	} // view
		
	
	// 작성하기 
	@GetMapping("/register")
	public String registerMove() {
		log.info("registerMove() invoked.");
		

		return "/center/notice/writing";
	} // registerMove
	
	
	// 작성하기 클릭
	@PostMapping("/register")
	public String register()  {
		log.trace("register() invoked.");
		
	
		return "redirect:/center/notice/list";	
	} // register
	
	
	@GetMapping("/modify")
	public String modifyMove() {
		log.info("modify() invoked.");
		
		return "/center/notice/modify";		
	} // modify
	
	@PostMapping("/modify")                  // 수정화면에서 수정 완료 클릭시 리다이렉트 시키는 PostMapping
	public String modify() {
		log.info("modify() invoked.");
		
		
		return "redirect:/center/notice/list";  // 수정완료 했으니 목록으로 redirect
	} // modify
	
	
	@PostMapping("/remove")
	public String remove() {
		log.trace("remomve() invoked.");
	
		return "redirect:/center/notice/list";		
	} // remove
	
	
	
	
	
} // end class
