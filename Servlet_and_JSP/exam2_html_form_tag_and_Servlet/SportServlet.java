package org.zerock.myapp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

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

@WebServlet("/Sport")
public class SportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		log.info("doPost(req, res) invoked.", req, res);
		
		try {
			// Step.1 전송 파라미터 획득
			req.setCharacterEncoding("utf8");
			
			String gender = req.getParameter("gender");
			String[] sports = req.getParameterValues("sports");
			
			log.info("gender: {}, sports: {}", gender, Arrays.toString(sports));
			
			res.setContentType("text/html; charset=utf8");
			
			@Cleanup
			PrintWriter out = res.getWriter();
			
			out.print("<ol>");
			
			for(String sport : sports) {
				out.print("\t<li>"+sport+"</li>");
			} // enhanced for
			
			out.print("</ol>");
			
			out.flush();
			
		} catch (Exception e) {
			throw new IOException(e);
		}
		
	}

}
