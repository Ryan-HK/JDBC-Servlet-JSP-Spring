package chapter5_httpsession;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lombok.Cleanup;
import lombok.NoArgsConstructor;

@NoArgsConstructor

@WebServlet("/Calc2")
public class CalcServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		res.setContentType("text/html; charset=utf8");
		
		String num_ = req.getParameter("num");
		String op = req.getParameter("operator");
		
		int num = 0;
		
		if(!num_.equals("")) num = Integer.parseInt(num_);
    	
		HttpSession session = req.getSession();
		Cookie[] cookies = req.getCookies();
		
		int result = 0;
		
		if(op.equals("=")) {
//			int x = (Integer)session.getAttribute("value");
//			String operator = (String) session.getAttribute("op");
			int y = num;
			int x = 0;
			
			for(Cookie c : cookies) {
				if(c.getName().equals("value")) {
					x = Integer.parseInt(c.getValue());
					break;
				}
			}
			
			String operator = "";
			
			for(Cookie c : cookies) {
				if(c.getName().equals("op")) {
					operator = c.getValue();
					break;
				}
			}
			
			
			if(operator.equals("+"))
				result = x + y;
			else
				result = x - y;
			
			@Cleanup
			PrintWriter out = res.getWriter();
			
			out.println("result : " + result);
			
			session.removeAttribute("value");
			session.removeAttribute("op");
			
		} else {
			
			Cookie valueCookie = new Cookie("value", String.valueOf(num));
			Cookie opCookie = new Cookie("op", op);
			
			res.addCookie(valueCookie);
			res.addCookie(opCookie);
//			session.setAttribute("value", num);
//			session.setAttribute("op", op);
		}
		  	
	} // service

} // end class
