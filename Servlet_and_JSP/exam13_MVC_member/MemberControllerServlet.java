package exam8_mvc_member;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2

@WebServlet("/mem.do")
public class MemberControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    MemberDAO memberDAO;   
	
    @Override
	public void init(ServletConfig config) throws ServletException {
		log.info("init(config) invoked");
    	memberDAO = new MemberDAO();
    	
    	
	} // init

	@Override	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		log.info("service(request, response) invoked");
		
		request.setCharacterEncoding("UTF8");
		response.setContentType("text/html; charset=UTF8");
		
		String nextPage = null;
		
		try {
			// 요청에 대해, 회원정보를 조회한다.
			List<MemberVO> membersList = memberDAO.listMembers();
			
			// 조회한 회원정보를 Request에 바인딩한다.
			request.setAttribute("membersList", membersList);
			
			// 회원정보를 출력하는 페이지에 forward한다.
			RequestDispatcher dispatch = 
					request.getRequestDispatcher("/Exam10_MVC_Member/listMembers.jsp");
			log.info("회원정보창으로 forward합니다.");
			dispatch.forward(request, response);
			
			
		} catch (Exception e) {
			throw new ServletException(e);
		}
		
		
	} // service

}
