package org.zerock.momofit.controller.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@RequestMapping("/mypage/")
@Controller
public class MyBoardController {

	// 1. mypage 내글 쓰기 이동
	@GetMapping("/board_list")
	public void myboardList() {
		log.trace("myboardList() invoked.");
		
	} // myboardList
	
	
} // end class
