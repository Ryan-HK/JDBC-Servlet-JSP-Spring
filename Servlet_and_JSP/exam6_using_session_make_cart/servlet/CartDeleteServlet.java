package exam2_using_session_make_cart.servlet;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2

@WebServlet("/CartDelete")
public class CartDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		log.trace("service(request, response) invoked.");
		
		HttpSession sess = request.getSession(false);
		
		try {
			Objects.requireNonNull(sess);
			
			// Session ID 무효화 + Session Scope영역을 파괴한다.
			sess.invalidate(); 
			
			// 마지막 응답 페이지는 forward를 통해, JSP를 통해 View 생성
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/cartdelete.jsp");
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			throw new ServletException(e);
		}
		
	} // service

} // end class
