package org.zerock.momofit.controller.signUp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zerock.momofit.exception.ControllerException;
import org.zerock.momofit.service.signUp.mail.MailService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@AllArgsConstructor

@RequestMapping
@Controller
public class mailCheckController {
	
	
	private MailService mailService;

	@GetMapping("/mailCheck")
	@ResponseBody
	public String mailCheck(String email) throws ControllerException {
		log.trace("mailCheck({}) invoked.", email);

		return mailService.mailSend(email);
				
	} // mailCheck
	

} // end class
