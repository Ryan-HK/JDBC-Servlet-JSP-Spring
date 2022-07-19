package chapter2_filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2

@WebFilter("/CharacterEncoding")
public class CharacterEncodingFilter extends HttpFilter implements Filter {
       
 
	// chain의 역할은 다음에게 넘겨주는것
	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		
		System.out.println("before filter");
		req.setCharacterEncoding("utf8");
		
		chain.doFilter(req, res);
		System.out.println("after filter");
		
		res.setCharacterEncoding("utf8");
		res.setContentType("text/html; charset=utf8");
		
		
		
		
		
	} // doFilter

} // end class
