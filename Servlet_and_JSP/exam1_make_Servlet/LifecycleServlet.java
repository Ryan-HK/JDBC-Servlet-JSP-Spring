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

@Log4j2
@NoArgsConstructor


// Servlet의 Lifecycle과 그 callback 메소드들을 이해하자!!!
//@WebServlet({ "/Lifecycle1", "/Lifecycle2" })
public class LifecycleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	
	@Override
	public void init(ServletConfig config) throws ServletException {
		log.trace("init({}) invoked.", config);
		
		// 요청처리에 필요한 각 종 자원객체의 획득(DataSource)
	}

	// WAS가 정상종료될 때, 실행되는 Lifecycle이다.
	@Override
	public void destroy() {
		log.trace("destroy() invoced.");
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		log.trace("service(req, res) invoked.");
	}

}
