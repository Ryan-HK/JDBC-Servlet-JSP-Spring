package org.zerock.myapp.servlet;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2

@WebServlet(
		urlPatterns = { "/InitParamAnno" }, 
		initParams = { 
				@WebInitParam(name = "dirPath", value = "_DIR_PATH_", description = "디렉토리경로"),
				@WebInitParam(name = "userid", value = "아이디")
		})
public class InitParamAnnoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		log.trace("service(req, res) invoked.");
		
		String dirPath = this.getInitParameter("dirPath");
		String userid = this.getInitParameter("userid");
		
		log.info("dirPath : {}, userid : {}", dirPath, userid);
		
	} // service

} // end class
