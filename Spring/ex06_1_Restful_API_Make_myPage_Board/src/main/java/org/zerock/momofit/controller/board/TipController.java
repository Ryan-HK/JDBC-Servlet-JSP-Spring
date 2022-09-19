package org.zerock.momofit.controller.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@RequestMapping("/board/tip/")
@Controller
public class TipController {
	
	@GetMapping("/list")
	public String list() {
		log.info("list() invoked.");
		
		
		return "/board/tip/tip_board";
	} // list
	
	
	@GetMapping("/view")
	public String view() {
		log.info("view() invoked.");
		

		return "/board/tip/main_board_tip";
	} // view
	
	
	@PostMapping("/modify")                  // 수정화면에서 수정 완료 클릭시 리다이렉트 시키는 PostMapping
	public String modify() {
		log.info("modify() invoked.");
		
		
		return "redirect:/board/tip/list";  // 수정완료 했으니 목록으로 redirect
	} // modify
	
	
	@GetMapping("/modify")                   // View에서 수정버튼 눌러서 수정하는 화면으로 보내주는 GetMapping
	public String modifyMove() {
		log.info("modifyMove() invoked.");
		
		
		return "/board/tip/modify"; 
	} // modify
	
	
	@PostMapping("/register")                 // 글 작성 화면에서 작성완료 클릭시 리다이렉트 시키는 PostMapping
	public String register() {
		log.info("register() invoked.");
		
		return "redirect:/board/tip/list";  // 작성완료 했으니 목록으로 redirect
	} // register
	
	
	@GetMapping("/register")                  // List에서 글쓰기 버튼 눌러서 글 작성 화면으로 보내주는 GetMapping
	public String registerMove() {
		log.info("registerMove() invoked.");
		
		return "/board/tip/writing";
	} // register
	
	
	@PostMapping("/remove")
	public String remove() {
		log.info("remove() invoked.");
		

		return "redirect:/board/tip/list";  // 삭제완료 했으니 목록으로 redirect
	} // remove
	
} // end class
