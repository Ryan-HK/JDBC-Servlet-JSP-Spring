package org.zerock.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@RequestMapping("/return/")

@Controller
public class ReturnTypesController {

	
//	void 타입
//	: 해당 URL의 경로를 그대로 jsp파일의 이름으로 사용한다.
	
	@GetMapping("/ex01")
	public void ex01() {
		log.trace("ex01() invoked.");
		
		
	} // ex01
	
//	String 타입
//	: 리턴 하는 값이 곧 jsp파일의 이름이 된다.
	@GetMapping("/ex02")
	public String ex02() {
		log.trace("ex02() invoked.");
		
		return "string";
	}
	
//	String 타입 : redirect키워드 사용
	@GetMapping("/ex03")
	public String ex03() {
		log.trace("ex03() invoked.");
		
		// ex01로 redirect한다.
		return "redirect:ex01";
	} // ex03
	
	@GetMapping("/ex04")
	public String ex04() {
		log.trace("ex04() invoked.");
		
		return "forward:ex01";
	} // ex04
	
} // end class
