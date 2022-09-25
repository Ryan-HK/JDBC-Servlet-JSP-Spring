package org.zerock.myapp.interceptor.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@Component
public class AuthInterceptor implements HandlerInterceptor {@Override
	
	
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler)
			throws Exception {
		log.trace("preHandle(req, res, {}) invoked.", handler);

		
		return true;
	} // preHandle

	@Override
	public void postHandle(HttpServletRequest req, HttpServletResponse res, Object handler,
			ModelAndView modelAndView) throws Exception {
		
	} // postHandle

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
	} // afterCompletion

	
	
} // end class
