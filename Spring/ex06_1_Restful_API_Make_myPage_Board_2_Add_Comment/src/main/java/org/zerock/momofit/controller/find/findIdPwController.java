package org.zerock.momofit.controller.find;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@RequestMapping("/find/")
@Controller
public class findIdPwController {

	@GetMapping("/id")
	public String findId() {
		log.trace("findId() invoked.");
		
		return "/find/id_search";
	} // findId
		
	
	@GetMapping("/pw")
	public String findPw() {
		log.trace("findPw() invoked.");
		
		return "/find/pw_search";
	} // findPw
		
	
}
