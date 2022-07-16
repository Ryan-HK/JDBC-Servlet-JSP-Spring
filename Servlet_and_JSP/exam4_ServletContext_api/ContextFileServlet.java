package org.zerock.myapp.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
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

@WebServlet("/ContextFile")
public class ContextFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		log.trace("service(req, res) invoked.");
		
		// "src/main/webapp/WEB-INF/testFile.txt" 읽어내자!
		// "/WEB-INF/testFile.txt" (웹 어플리케이션 기준으로보면, Content Root가 시작지점)
		String readFile = "WEB-INF/testFile.txt";
		ServletContext sc = req.getServletContext();
		
		@Cleanup
		InputStream is = sc.getResourceAsStream(readFile);
		@Cleanup
		BufferedReader br = new BufferedReader(new InputStreamReader(is));
		
		
		// 응답 문서 생성
		res.setContentType("text/html; charset=utf8");
		@Cleanup
		PrintWriter out = res.getWriter();
		
		String line;
		
		out.println("<ol>");
		while( (line = br.readLine()) != null) {
			out.println("<li>" + line + "</li>");
			
		} // while
		out.println("</ol>");
		
		out.flush();
		out.close();
		
//		URL url = sc.getResource("/WEB-INF/testFile.txt");
//		InputStream is = url.openStream();
		
		
	} // service

} // end class
