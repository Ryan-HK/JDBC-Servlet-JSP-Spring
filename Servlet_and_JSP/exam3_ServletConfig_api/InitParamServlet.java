package org.zerock.myapp.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;


@NoArgsConstructor
@Log4j2


public class InitParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private String dirPath;
	private String userid;

	@Override
	public void init(ServletConfig config) throws ServletException {
		
		try {
			super.init(config);
			log.trace("init(config) invoked.");
			
			this.dirPath = this.getInitParameter("dirPath");
			this.userid = this.getInitParameter("userid");
			
			log.info("dirPath : {}, userid : {}", this.dirPath, this.userid);
		
		} catch (Exception e) {
			throw new ServletException(e);
		} // try-catch
		
	} // init


	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		log.info("dirPath : {}, userid : {}", this.dirPath, this.userid);
		
	} // service

} // end class
