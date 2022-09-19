package org.zerock.momofit.controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@RequestMapping("/")
@Controller
public class mainPageController {

	@GetMapping
	public String mainPage() {
		log.trace("mainPage() invoked.");
		
		return "main/main";
		
	} // mainPage
	
	
}
