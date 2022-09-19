package org.zerock.momofit.controller.group;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@AllArgsConstructor

@Controller
@RequestMapping("/group/")
public class GroupController {
	
	
	// 1. 전체목록 조회하기
	
	@GetMapping("/list")
	public String list() {
		log.trace("list() invoked.");
		
		return "/group/list";
		
	} // list
	
	
	// 2-1. 모임 작성 (입력 화면)
	@GetMapping("/register")
	public String write() {
		log.trace("write({}) invoked.");
		
		return "/group/register";
		
	} // write
	
	// 2-2. 모임 등록
	@PostMapping("/register")
	public String register() {
		log.trace("register({}) invoked.");
		
		return "redirect:/group/list";
		
	} // register
	
	
	// 3. 모임 상세보기
	
	@GetMapping("/detail")
	public String detail() {
		log.trace("detail() invoked.");
		
		return "/group/detail";
	}
	
	// 4-1. 모임 수정 (입력 화면)
	
	@GetMapping("/modify")
	public String modify() {
		log.trace("modify() invoked.");
		
		return "/group/modify";
	} // modify
	
	// 4-2. 모임 수정
	
	@PostMapping("/modify")
	public String update() {
		log.trace("modify() invoked.");
		
		return "redirect:/group/detail";
	} // update
	
	// 5. 모임 삭제
	
	@PostMapping("/remove")
	public String remove() {
		log.trace("remove() invoked.");
		
		return "redirect:/group/list";
	} // remove

	// 6-1. 모임참가자 목록 (입력 화면)
	@GetMapping("/memberList")
	public String memberList() {
		log.trace("memberList() invoked.");
		
		return "/group/memberList";
	} // delegate
	
	// 6-2. 모임장 위임
	@PostMapping("/delegate")
	public String delegate() {
		log.trace("delegate() invoked.");
		
		return "redirect:/group/detail";
	} // delegate
	
	// 7. 모임채팅
	@GetMapping("/chatting")
	public String chatting() {
		log.trace("chatting() invoked.");
		
		return "/group/chat";
	}
	
	
	
	
	
	
	
	@RequestMapping(value = "/favicon.ico", method = RequestMethod.GET)	
	public void favicon( HttpServletRequest request, HttpServletResponse reponse ) {
		try {
			reponse.sendRedirect("/resources/favicon.ico");		
		} catch (IOException e) {
			e.printStackTrace();
			}	
		}
		

} // class
