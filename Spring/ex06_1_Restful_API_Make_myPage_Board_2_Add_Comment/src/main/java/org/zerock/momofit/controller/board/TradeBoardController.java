package org.zerock.momofit.controller.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@RequestMapping("/board/trade/")
@Controller
public class TradeBoardController {
	
	// 중고거래 게시판
	@GetMapping("/list")
	public void list() {
		log.trace("TradeBoard() invoked.");
		
	} // list
	
	
	// 상세보기
	@GetMapping("/view")
	public String view() {
		log.info("view() invoked.");
		

		return "/board/trade/main_board_trade";
	} // view
	
	// 작성화면 이동
	@GetMapping("/register")
	public String registerMove() {
		log.info("registerMove() invoked.");
		

		return "/board/trade/writing";
	} // registerMove
	
	// 작성하기 클릭
	@PostMapping("/register")
	public String register()  {
		log.trace("register() invoked.");
		
	
		return "redirect:/board/trade/list";	
	} // register
	

	@GetMapping("/modify")
	public String modifyMove() {
		log.info("modify() invoked.");
		
		return "/board/trade/modify";		
	} // modify
	
	@PostMapping("/modify")                  // 수정화면에서 수정 완료 클릭시 리다이렉트 시키는 PostMapping
	public String modify() {
		log.info("modify() invoked.");
		
		
		return "redirect:/board/trade/list";  // 수정완료 했으니 목록으로 redirect
	} // modify
	

	@PostMapping("/remove")
	public String remove() {
		log.trace("remomve() invoked.");
	
		return "redirect:/board/trade/list";		
	} // remove
	
	
	
	
} // end class
