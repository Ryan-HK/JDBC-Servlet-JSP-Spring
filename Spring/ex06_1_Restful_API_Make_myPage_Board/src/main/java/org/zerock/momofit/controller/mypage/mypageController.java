package org.zerock.momofit.controller.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;


//-- 임시 컨트롤러입니다. View 화면 보이기 위한 Controller이므로, 최종본이 아님.
@Log4j2
@NoArgsConstructor

@RequestMapping("/mypage/")
@Controller
public class mypageController {
	
	@GetMapping("/my_group")
	public void myGroupList() {
		
	} // myGroupList
	
	
	@GetMapping("/check_pw")
	public void check_pw() {
		
		
	} // check_pw
	
	@PostMapping("/check_pw")
	public String check_pw_post() {
		
		return "redirect: /mypage/info_modify";
	} // check_pw_post
	
	
	@GetMapping("/info_modify")
	public void infoModify() {
		
		
	} // infoModify
	
	
	@GetMapping("/message_receive")
	public void noteReceiveList() {
		
	} // noteReceiveList
	
	@GetMapping("/comment_list")
	public void commentList() {
		
	} // commentList
	
	@GetMapping("/csboard_list")
	public void csboardList() {
		
	} // csboardList
	

} // end class
