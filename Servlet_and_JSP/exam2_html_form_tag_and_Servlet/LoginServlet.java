package org.zerock.myapp.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.AllArgsConstructor;
import lombok.Cleanup;
import lombok.extern.log4j.Log4j2;


@Log4j2
@AllArgsConstructor

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		log.info("doGet(req, res) invoked.");
		
		try {
			
			// Step.1 : 전송파라미터를 회득한다. getParameter(name)
			String userid = req.getParameter("userid");
			String passwd = req.getParameter("passwd");
			
			log.info("\t + userid : {}, passwd : {}", userid, passwd);
			
			// Step.2 : 에코(echo)
			res.setCharacterEncoding("utd-8");
			res.setContentType("text/html; charset=utf-8");
			
			@Cleanup
			PrintWriter out = res.getWriter();
			
			out.print("<ul>");
			out.print("<li>" + userid + "</li>");
			out.print("<li>" + passwd + "</li>");
			out.print("</ul>");
			
			out.flush();
		} catch (Exception e) {
			throw new IOException(e);
		}

	} // doGet

} // end class
