package org.zerock.momofit.controller.signUp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@RequestMapping("/signup")
@Controller
public class signUpController {
	
	@GetMapping
	public String signUp() {
		log.trace("signUp() invoked.");
		
		return "signUp/signup";
		
	} // signUp
	
	@PostMapping
	public String signUpProcess() {
		log.trace("signUpProcess() invoked.");
		
		return "signUp/signup";
		
	} // signUpProcess
	
	@GetMapping("/map")
	public String mapTest() {
		log.trace("mapTest() invoked.");
		
		return "signUp/map";
		
	} // signUp
	
}
