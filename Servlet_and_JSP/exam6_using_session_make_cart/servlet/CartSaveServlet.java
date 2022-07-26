package exam2_using_session_make_cart.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lombok.Cleanup;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2

@WebServlet("/CartSave")
public class CartSaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		log.trace("service(request, response) invoked.");
		
//		==
//		Step.1 : 장바구니에 저장할 상품항목을 전송 파라미터로 획득
//		==
		
		request.setCharacterEncoding("UTF8");
		
		String product = request.getParameter("product");
		log.info("\t+ product : {}", product);
		
//		==
//		Step.2 : 장바구니 생성 및 수신 된 상품을 장바구니에 추가
//		==
		
//		1) Session 영역을 획득한다.
		HttpSession sess = request.getSession();
		
//		2) 장바구니역할을 할 List 객체에 Session 영역에서 장바구니를 선택해 선언
//			-.아직 장바구니 공유객체가 생성되었는지, 모른다! 만약 생성이 안되었다면
//			장바구니 역할을 할 List객체에는 null 값이 저장 될 것이다.
//			-. 이 때, 장바구니 역할을 할 ArrayList를 생성해주고, 공유객체로 
//			설정해주면 되는 것이다.
//			-.공유객체는 Object로 리턴하기 때문에, 강제형변환이 필수이다.
		@SuppressWarnings("unchecked")
		List<String> list = (List<String>) sess.getAttribute("basket");
		
		if(list == null) {
			list = new ArrayList<>();
			sess.setAttribute("basket", list);
		}
		
//		3) 수신된 상품을 장바구니에 저장한다.
		list.add(product);
		log.info("\t+ list : {}", list);
		
//		=========================================================
//		Step.3 : 응답화면 생성 및 전송
//		=========================================================
		response.setContentType("text/html; charset=UTF8");
		
		@Cleanup
		PrintWriter out = response.getWriter();
		
		out.println("<h1>장바구니에 담기 성공</h1>");
		out.println("<a href='/CartBasket'>장바구니 보기</a>");
		
		out.flush();
		
	} // service

} // end class
