package org.zerock.myapp.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2

@WebServlet("/ContextParam")
public class ContextParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		log.trace("service(req, res) invoked.");
		
		
		try {
			
			
			
			// Step.1 : Context Parameter 얻기
//			ServletContext sc = this.getServletContext();	// 1st. method (권장하지 않는다.)
			ServletContext sc = req.getServletContext();	// 2nd. method (추천)
			
			String driver = sc.getInitParameter("driver");
			String savePath = sc.getInitParameter("savePath");
			
			log.info("\t + driver : {}, savePath : {}", driver, savePath);
			
		
			
			
		} catch (Exception e) {
			throw new IOException(e);
		}
		
	} // service

} // end class
