package org.zerock.myapp.controller;

import java.util.ArrayList;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.myapp.domain.SampleDTO;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@RequestMapping("/board/")

@Controller
public class SampleController {
	
//	@RequestMapping("")
	@RequestMapping
	public String basic() {
		log.trace("basic() invoked.");
		
		return "sample";
	} // basic
	
	
	@GetMapping("/basicOnlyGet")
	public String basicOnlyGet() {
		log.trace("basicOnlyGet() invoked.");
		
		return "sample";
	}
	
	@PostMapping("/basicOnlyPost")
	public String basicOnlyPost() {
		log.trace("basicOnlyPost() invoked.");
		
		return "sample";
	}
	
	@GetMapping("/ex01")
	public String ex01(String name2, Integer age2) {
		log.trace("ex01() invoked.");
		
		log.info("name : {}, age : {}", name2, age2);
		
		// servlet-context.xml에 지정 된, view-resolvers 의해서
		// prefix + viewname + suffix = /WEB-INF/views/ + ex01 + .jsp = /WEB-INF/views/ex01.jsp
		// MVC패턴에서, View의 이름
		return "ex01";
	} // ex01
	
	@GetMapping("ex02")
	public String ex02 (SampleDTO dto) {
		log.trace("ex02({}) invoked.", dto);
		
		return "ex02";
	} // ex02
	
	@GetMapping("/ex03")
	public String ex03 (
			@RequestParam("name")String name2,
			@RequestParam("age")Integer age2) {
		log.trace("ex03({}, {}) invoked.",name2, age2);
		return "ex03";
	} // ex03
	
	@GetMapping("/ex04")
	public String ex04 (
			@RequestParam("name") ArrayList<String> name
	) {
		log.trace("ex04() invoked.");
		
		name.forEach(log::info);
		
		return "ex04";
	}
	
	
	@GetMapping("/ex05")
	public String ex05 (
			@RequestParam("date")
			@DateTimeFormat(pattern = "yyyy/MM/dd") 
			Date hireDate
	) {
		log.trace("ex05() invoked.");
		
		log.info("hireDate : {}", hireDate);
		
		return "ex05";
	} // ex05
	
	
	@GetMapping("/ex06")
	public String ex06 (
			SampleDTO dto, int page
	) {
		log.trace("ex06({},{}) invoked.", dto, page);
		
		
		return "/board/ex06";
	} // ex06
	
	@GetMapping("/ex07")
	public String ex07 (
			SampleDTO dto, Integer page, Model model
	) {
		log.trace("ex07({},{}) invoked.", dto, page);
		
		model.addAttribute("page", page);
		
		return "/board/ex06";
	} // ex07
	
	@GetMapping("/ex08")
	public String ex08 (
			SampleDTO dto, @ModelAttribute("page")int page
	) {
		log.trace("ex08({},{}) invoked.", dto, page);
		
		return "/board/ex06";
	} // ex08
	
	@GetMapping("/ex09")
	public String ex09 (SampleDTO dto, Integer page, RedirectAttributes rttrs) {
		log.trace("ex09() invoked.");
		
//		rttrs.addFlashAttribute("name", dto.getName());
//		rttrs.addFlashAttribute("age", dto.getAge());
//		rttrs.addFlashAttribute("page", page);
		
		rttrs.addAttribute("name", dto.getName());
		rttrs.addAttribute("age", dto.getAge());
		rttrs.addAttribute("page", page);
		
		return"redirect:/board/ex10";
	}
	
	@GetMapping("/ex10")
	public String ex10 (SampleDTO dto, @ModelAttribute("page")Integer page) {
		log.trace("ex10() invoked.");
		
		
		return "/board/ex06";
	}
	
	

} // end class












