package chapter4_servletcontext;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.Cleanup;
import lombok.NoArgsConstructor;

@NoArgsConstructor

@WebServlet("/Calc")
public class CalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		res.setContentType("text/html; charset=utf8");
		
		String num_ = req.getParameter("num");
		String op = req.getParameter("operator");
		
		int num = 0;
		
		if(!num_.equals("")) num = Integer.parseInt(num_);
    	
		ServletContext application = req.getServletContext();
		int result = 0;
		
		if(op.equals("=")) {
			int x = (Integer)application.getAttribute("value");
			int y = num;
			String operator = (String) application.getAttribute("op");

			if(operator.equals("+"))
				result = x + y;
			else
				result = x - y;
			
			@Cleanup
			PrintWriter out = res.getWriter();
			
			out.println("result : " + result);
			
			application.removeAttribute("value");
			application.removeAttribute("op");
			
		} else {
			
			
			application.setAttribute("value", num);
			application.setAttribute("op", op);
		}
		  	
	} // service

} // end class
