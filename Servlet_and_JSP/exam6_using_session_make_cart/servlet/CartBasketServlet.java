package exam2_using_session_make_cart.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Objects;

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

@WebServlet("/CartBasket")
public class CartBasketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	@SuppressWarnings("unchecked")
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		log.trace("service(request, response) invoked.");
		
		List<String> list = null;
		
		try {
			HttpSession sess = request.getSession();
			log.info("\t+ sess : {}", sess);
			
			Objects.requireNonNull(sess);
			
			list = (List<String>) sess.getAttribute("basket");
			
			Objects.requireNonNull("basket");
			
			list.forEach(log::info);
			
		} catch (Exception e) {
			throw new ServletException(e);
		} // try-catch
		
		try {
			response.setContentType("text/html; charset=utf8");
			
			@Cleanup
			PrintWriter out = response.getWriter();
			
			out.println("<h1>장바구니 내용</h1>");
			out.println("<ol>");
			
			list.forEach(s -> {
				out.println("\t<li>" + s + "</li>");
			}); // forEach
			
			out.println("</ol>");
			out.println("<a href='/CartDelete'>장바구니 비우기</a>");
			
			out.flush();
			
		} catch (Exception e) {
			throw new IOException(e);
		}
	} // service

} // end class
