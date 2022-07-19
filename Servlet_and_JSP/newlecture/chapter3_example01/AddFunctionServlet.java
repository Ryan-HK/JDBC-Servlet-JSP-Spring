package chapter3_example01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.Cleanup;
import lombok.NoArgsConstructor;

@NoArgsConstructor

@WebServlet("/AddFunction")
public class AddFunctionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
    	res.setContentType("text/html; charset=utf8");
    	
    	String x_ = req.getParameter("x");
    	String y_ = req.getParameter("y");
    	String operator = req.getParameter("operator");
    	String op = "";
    	
    	int x = 0, y =0;
    	
    	
    	if(!x_.equals("")) x = Integer.parseInt(x_);
    	if(!y_.equals("")) y = Integer.parseInt(y_);
    	
    	int result = 0;
    	
    	if(operator.equals("덧셈")) {
    		result = x + y;
    		op = "+";
    	}
    		
    	else {
    		result = x - y;
    		op = "-";
    	}
    		
    	
    	
    	@Cleanup
    	PrintWriter out = res.getWriter();
    	
    	out.println(x + op + y + "=" + result);
    	
	} // service

} // end class
