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

@WebServlet("/AddFunction2")
public class AddFunctionServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
    	res.setContentType("text/html; charset=utf8");
    	
    	String[] num_ = req.getParameterValues("num");
    	
    	int result = 0;
    	
    	for(String x : num_) {
    		
    		int num = Integer.parseInt(x);
    		result += num;
    	}
    	
    	@Cleanup
    	PrintWriter out = res.getWriter();
    	
    	out.println("result : " + result);
    	
	} // service

} // end class
