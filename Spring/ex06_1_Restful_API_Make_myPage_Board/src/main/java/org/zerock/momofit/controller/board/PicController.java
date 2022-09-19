package org.zerock.momofit.controller.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2

@RequestMapping("/board/pic")
@Controller
public class PicController {
	
	@GetMapping("/list")
	public String list() {
		log.trace("list invoke");
		return "/board/pic/sports_check";
		
	}//list 목록
	
	
	@GetMapping("/view")
	public String view() {
		log.trace("view invoke");
		return "/board/pic/main_board_pic";
		
	}//view 상세글조회
	
		
	@GetMapping("/modify")
	public String modifyForm() {
		log.trace("modifyForm invoke");
		return "/board/pic/modify";
		
	}//modify수정화면 띄우기
	
	@PostMapping("/modify")
	public String modify() {
		log.trace("modify invoke");
		return "redirect:/board/pic/list";
	}//수정처리(처리 후 리스트로 이동)
	
	
	@GetMapping("/register")
	public String registerForm() {
		log.trace("registerForm invoke");
		return "/board/pic/writing";
		
	}//작성화면
		
	@PostMapping("/register")
	public String register() {
		log.trace("register invoke");
		return "redirect:/board/pic/list";
		
	}//작성처리(처리후 리스트로 이동)
	
	
	
	@PostMapping("/remove")
	public String remove() {
		return "redirect:/board/pic/list";
		
	}//remove삭제
	

	

	
	
	

}
