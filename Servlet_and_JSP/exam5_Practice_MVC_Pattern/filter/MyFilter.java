package exam1_command_and_model.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2

//@WebFilter("/Hello")
public class MyFilter 
	extends HttpFilter 
	implements Filter {

	public void destroy() {
		
	} // destroy

	
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		log.trace("doFilter(req, res, chain{}) invoked.");
		log.info("Pre-processing for request");
//		log.info("\t + {}", chain);
		// 요청에 대한 선처리 (Pre-processing or Munging)
		req.setCharacterEncoding("UTF8");
		
//		 요청(request)에 대한 선처리와 응답(response)에 후처리를 제어하는 호출
//		===================================
		chain.doFilter(req, res); // 
//		===================================
//		log.info("\t + {}", chain);
		// 응답에 대한 후처리 (Post-processing)
		res.setCharacterEncoding("UTF8");
		
		
	} // doFilter

	
	public void init(FilterConfig fConfig) throws ServletException {
		
	} // init

} // end class
