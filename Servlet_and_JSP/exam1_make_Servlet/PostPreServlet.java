package org.zerock.myapp.servlet;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@WebServlet("/PostPre")
public class PostPreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	public void init(ServletConfig config) throws ServletException {
		log.trace("init({}) invoked.", config);	
		// 요청처리에 필요한 각 종 자원객체의 획득(DataSource)
	}
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		log.trace("service(res, req) invoked.", req, res);
		
		try {
			
		} catch (Exception e) {
			throw new IOException(e);
		}
		
	} // service
	
	@Override
	public void destroy() {
		log.trace("destroy() invoced.");
	}
	
	@PostConstruct
	public void postConstruct() {
		log.info("postConstruct() invoked.");
	}
	
	@PreDestroy
	public void PreDestroy() {
		log.info("preDestroy() invoked");
	}

} // end class
