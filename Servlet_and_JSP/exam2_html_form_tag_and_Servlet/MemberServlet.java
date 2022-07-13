package org.zerock.myapp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.Cleanup;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2

@WebServlet("/Member")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		log.trace("service(req, res) invoked.", req, res);
		
		
		// Step.1 : 전송 파라미터 획득
		// (*주의*) getParameter 메소드 수행전에,
		// 반드시 req.setCharacterEncoding("utf8") 실행
		req.setCharacterEncoding("utf8");

		Enumeration<String> enu = req.getParameterNames();
		
		// Step.2 : 응답화면 생성 및 전송
		res.setContentType("text/html; charset=utf8");
		
		@Cleanup
		PrintWriter out = res.getWriter();
		
		out.println("<ol>");
		while(enu.hasMoreElements()) {
			String paramName = enu.nextElement();
			String paramValue = req.getParameter(paramName);
			
			log.info("paramName : {}, paramValue : {}", paramName, paramValue);
			out.println(String.format("<li> %s : %s</li>", paramName, paramValue));
			
		} // while
		
		out.println("</ol>");
		
		out.flush();
		
	}

}
