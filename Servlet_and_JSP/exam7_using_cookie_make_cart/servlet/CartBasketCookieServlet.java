package exam3_using_cookie_make_cart.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.Cleanup;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2

@WebServlet("/CartBasketCookie")
public class CartBasketCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    	log.trace("service(request, response) invoked.");
    	
//		====================================================
//    	Step.1 : 쿠키는 항상 웹브라우저가 request message 헤더에 담아서 보내온다.
//    	====================================================
    	Cookie[] basket = request.getCookies();
    	log.info("\t+ basket : {}", Arrays.toString(basket));
    	
//		====================================================
//    	Step.2 : 응답문서 생성
//    	====================================================
    	response.setContentType("text/html; charset=utf8");
    	
    	@Cleanup
    	PrintWriter out = response.getWriter();
    	
    	if(basket == null) {
    		out.print("장바구니 비어있음<br>");
    	} else {
    		
    		for(Cookie cookie : basket) {
    			String name = cookie.getName();
    			String value = cookie.getValue();
    			
    			out.println("<h2>" + name + " : " + value + "</h2>");
    		} // enhanced for
    	} // if-else
    	
    	out.print("<a href='product.html'>상품선택 페이지 </a><br>");
		out.print("<a href='CartDeleteCookie'>장바구니 비우기</a>");
		
		out.flush();
    	
    	
	} // service


} // end class
