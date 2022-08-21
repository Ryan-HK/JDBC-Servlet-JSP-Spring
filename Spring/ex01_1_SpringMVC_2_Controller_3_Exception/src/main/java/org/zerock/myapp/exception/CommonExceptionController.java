package org.zerock.myapp.exception;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.NoHandlerFoundException;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@ControllerAdvice
public class CommonExceptionController {
	
	@ExceptionHandler(CommonException.class)
	public String handleControllerException(Exception e, Model model) {
		log.trace("handleControllerException() invoked.");
		
		model.addAttribute("_EXCEPTION_",e);
		
		return "errorPage";
	} // handleControllerException
	
	@ExceptionHandler(NoHandlerFoundException.class)
	public String handleNoHandlerFoundException(Exception e, Model model) {
		
		model.addAttribute("_EXCEPTION_", e);
		
		return "/error/errorPage";
	} // handleNoHandlerFoundException
	
} // end class
