package org.zerock.momofit.exception;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@ControllerAdvice
public class CommonsException {
	
	@ExceptionHandler
	public String handControllerException(Exception e, Model model) {
		log.trace("handControllerException({}, {}) invoked", e, model);
		
		model.addAttribute("_EXCEPTION_",e);
		
		return "errorPage";
	}
	
} // end class
