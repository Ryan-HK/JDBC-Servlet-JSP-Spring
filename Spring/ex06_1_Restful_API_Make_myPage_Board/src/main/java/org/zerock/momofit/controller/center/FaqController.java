package org.zerock.momofit.controller.center;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2

@RequestMapping("/center/faq/")
@Controller
public class FaqController {
	
	@GetMapping("/list")
	public String list() {
		log.trace("list() invoked.");
	
		return "/center/faq/main_board_faq";
	} // list
	
	
} // end class
