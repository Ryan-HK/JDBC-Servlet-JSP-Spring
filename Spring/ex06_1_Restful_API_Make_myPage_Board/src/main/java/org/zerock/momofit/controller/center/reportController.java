package org.zerock.momofit.controller.center;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@RequestMapping("/center/report/")
@Controller
public class reportController {

	@GetMapping({"/list", })
	public String list() {
		log.trace("reportBoardList() invoked.");
		
		
		return "center/report/list/report_board";
	}
	
	@GetMapping("/view")
	public String view() {
		log.trace("reportBoardView() invoked.");
		
		
		return "center/report/view/main_board_report";
	}
	
	@GetMapping("/register")
	public String register() {
		log.trace("reportBoardRegister() invoked.");
		
		
		return "center/report/register/writing_report";
	}
	
	@PostMapping("/register")
	public String registerProcess() {
		log.trace("reportBoardRegisterProcess() invoked.");
		
		return "redirect:/center/report/list";
		
	}
	
	
	@GetMapping("/usersearch")
	public String userSearch() {
		log.trace("reportBoardUserSearch() invoked.");
		
		
		return "center/report/register/popup_find_nickname";
	}
	
	
	@GetMapping("/modify")
	public String modify() {
		log.trace("reportBoardModify() invoked.");
		
		
		return "center/report/modify/modify_report";
	}
	
	@PostMapping("/modify")
	public String modifyProcess() {
		log.trace("reportBoardModifyProcess() invoked.");
		
		
		return "redirect:/center/report/list";
	}
	
	
	@PostMapping("/remove")
	public String remove() {
		log.trace("reportBoardRemove() invoked.");
		
		
		return "redirect:/center/report/list";
	}
	
	
} // end class
