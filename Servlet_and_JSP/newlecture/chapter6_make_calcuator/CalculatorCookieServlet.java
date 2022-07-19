package chapter6_make_calcuator;

import java.io.IOException;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.NoArgsConstructor;

@NoArgsConstructor

@WebServlet("/CalculatorCookie")
public class CalculatorCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		res.setContentType("text/html; charset=utf8");
		Cookie[] cookies = req.getCookies();
		
		
		String value = req.getParameter("value");
		String operator = req.getParameter("operator");
		String dot = req.getParameter("dot");
		String exp = "";

		if(cookies != null) {
			
			for(Cookie c : cookies) {
				if(c.getName().equals("exp")) {
					exp = c.getValue();
					break;
				}
			}		
		}
		
		if(operator != null && operator.equals("=")) {
			ScriptEngine engine = new ScriptEngineManager().getEngineByName("nashorn");
			try {
				exp = String.valueOf(engine.eval(exp));
			} catch (ScriptException e) {
				e.printStackTrace();
			}
			
		
			
		} 
		
		else if(operator !=null && operator.equals("C")) {
			exp = "";
		}
		
		else {
			exp += (value == null)? "" : value;
			exp += (operator == null)? "" : operator;
			exp += (dot == null)? "" : dot;
		}
		
		
		Cookie expCookie = new Cookie("exp", exp);

		if(operator !=null && operator.equals("C"))
			expCookie.setMaxAge(0);
		
		res.addCookie(expCookie);
		res.sendRedirect("Calculator");
		
		
	} // service

} // end class
