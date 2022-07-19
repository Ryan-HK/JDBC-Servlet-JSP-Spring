package chapter1_basic_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2

@WebServlet("/Get")
public class GetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		res.setCharacterEncoding("utf8");
		res.setContentType("text/html; charset=utf8");
		
		PrintWriter out = res.getWriter();
		
		String cnt_ = req.getParameter("cnt");
		
		int cnt = 10; 
		
		if(cnt_ != null && cnt_ != "") {
			cnt = Integer.parseInt(cnt_);
		}
		
		for(int i=0; i<cnt; i++) {
			out.println((i+1)+ " : 안녕 Servlet!!<br>");
		}
    	
    	
	} // service

} // end class
