package exam3_using_cookie_make_cart.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2

@WebServlet("/CartDeleteCookie")
public class CartDeleteCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		log.trace("service(request, response) invoked");
		
		Cookie[] basket = request.getCookies();
		
		if(basket != null) {
			
			for(Cookie cookie : basket) {
				cookie.setMaxAge(1);
				
				response.addCookie(cookie);
			}
			
		}
		
    	
    	
	} // service

} // end class
