package org.zerock.momofit.controller.signIn;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@Controller
@RequestMapping("/signin")
public class signInController {
	
	@GetMapping
	public String signin() {
		log.trace("signin() invoked.");
		
		// 로그인 페이지 처리
		
		return "signIn/login";
	}
	

	@PostMapping
	public String signinProcess() {
		log.trace("signinProcess() invoked.");
		
		// 로그인 버튼 클릭시 처리
		
		return "redirect:/";
	}
	
}
