package org.zerock.momofit.exception;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;


@Log4j2
@NoArgsConstructor

@ControllerAdvice
public class CommonsExceptionHandler {
	

	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)	// HTTP status code = 500
	@ExceptionHandler( Exception.class )
	public String handleException(Exception e, Model model) {		// 모든 예외의 처리 핸들러
		log.trace("handleException({}, {}) invoked.", e, model);
		
		model.addAttribute("_EXCEPTION_", e);
		
		return "errorPage";			// 뷰의 이름 반환
	} // handleException
	

	@ResponseStatus(HttpStatus.BAD_REQUEST)	// HTTP status code = 400
	@ExceptionHandler( ControllerException.class )
	public String handleControllerException(Exception e, Model model) {
		log.trace("handleControllerException({}, {}) invoked.", e, model);
		
		model.addAttribute("_EXCEPTION_", e);
		
		return "errorPage";			// 뷰의 이름 반환
	} // handleControllerException
	

	@ResponseStatus(HttpStatus.METHOD_NOT_ALLOWED)	// HTTP status code = 405
	@ExceptionHandler( NoHandlerFoundException.class )
	public String handleNoHandlerFoundException(Exception e, Model model) {
		log.trace("handleNoHandlerFoundException({}, {}) invoked.", e, model);
		
		model.addAttribute("_EXCEPTION_", e);
		
		return "errorPage";			// 뷰의 이름 반환
	} // handleNoHandlerFoundException

} // end class
