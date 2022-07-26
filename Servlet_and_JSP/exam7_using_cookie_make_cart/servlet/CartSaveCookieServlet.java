package exam3_using_cookie_make_cart.servlet;

import java.io.IOException;
import java.io.PrintWriter;

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

@WebServlet("/CartSaveCookie")
public class CartSaveCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		log.trace("service(request, response) invoked.");
		
		request.setCharacterEncoding("UTF8");
    	
//    	===========================================================
//    	Step.1 : 장바구니에 저장할 상품항목을 전송파라미터로 부터 획득
//    	===========================================================
    	String product = request.getParameter("product");
    	log.info("\t+ product : {}", product);
    	
//    	===========================================================
//    	Step.2 : 요청메시지(Request Message)의 헤더에 포함되어 있는 모든 쿠키 획득
//    	===========================================================
    	Cookie[] cookies = request.getCookies();
    	
//    	===========================================================
//    	Step.3 : 직접 쿠키 생성
//    	===========================================================
    	Cookie cookie = null;
    	
    	if(cookies == null || cookies.length == 0) {
    		cookie = new Cookie("product", product);
    	} else {
    		cookie = new Cookie("product"+(cookies.length +1), product);
    	}
    			
//    	===========================================================
//    	Step.4 : 쿠키 만료시간 설정
//    	=========================================================
    	cookie.setMaxAge(60 * 60);
    	
//		=========================================================
//		Step.5 : 응답메시지의 헤더에, 우리가 위 Step.3 에서 생성한 쿠키객체를 저장
//		=========================================================
    	response.addCookie(cookie);
    	
//		=========================================================
//		Step.7 : 응답문서 생성 및 전송
//		=========================================================
    	
    	response.setContentType("text/html; charset=UTF8");
    	
		@Cleanup
		PrintWriter out = response.getWriter();
		
		out.println("<h1>장바구니에 담기 성공</h1>");
		out.println("<a href='/CartBasketCookie'>장바구니 보기</a>");
		
		out.flush();
    	
	} // service

} // end class
