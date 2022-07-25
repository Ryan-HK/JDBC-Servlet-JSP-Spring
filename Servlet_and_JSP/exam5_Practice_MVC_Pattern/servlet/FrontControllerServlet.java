package exam1_command_and_model.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exam1_command_and_model.domain.EmpDTO;
import exam1_command_and_model.service.DeleteServiceImpl;
import exam1_command_and_model.service.InsertServiceImpl;
import exam1_command_and_model.service.SelectServiceImpl;
import exam1_command_and_model.service.Service;
import exam1_command_and_model.service.UnknownServiceImpl;
import exam1_command_and_model.service.UpdateServiceImpl;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2

@WebServlet("*.do")
public class FrontControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		log.trace("service(request, response");
    	
//		======================================================
//		Step.1 전송 파라미터 획득 및 DTO 객체로 수집
//		======================================================
//		-- 전송파라미터 획득
		String empno = request.getParameter("empno");
		String ename = request.getParameter("ename");
		String sal = request.getParameter("sal");
		String deptno = request.getParameter("deptno");
		
		log.info("\t+ empno : {}, ename : {}, sal : {}, deptno : {}", empno, ename, sal, deptno);
    	
//		-- 획득한 전송 파라미터를 DTO 객체로 수집
		EmpDTO dto = new EmpDTO();
		
		if(empno !=null && !"".equals(empno)) dto.setEmpno(Integer.parseInt(empno));
		dto.setEname(ename);
		if(sal != null && !"".equals(sal)) dto.setSal(Double.parseDouble(sal));
		if(deptno !=null && !"".equals(deptno)) dto.setDeptno(Integer.parseInt(deptno));
		
		log.info("\t+ dto : {}", dto);
		
//		-- DTO객체로 수집한 DATA를 Request Scope에 바인딩해준다.
//		(즉, 이 저장한 객체는 웹 3계층에서 어디에서든 Response가 나가기 전까지는
//		사용할 수 있다.)
		
//		-- 보편적으로 DTO 객체의 KEY는 Service 클래스에 선언한다.
		request.setAttribute(Service.DTO, dto);
		
		
//		======================================================
//		Step.2 Request URI를 획득하여, 요청을 식별
//		======================================================
		
		String command = request.getRequestURI();
		
		log.info("\t+ command : {}", command);
		
//		======================================================
//		Step.3 얻어 낸 command를 처리할 비지니즈 수행 객체를 식별하고,
//		처리를 위임한다.
//		이때, 비지니스 계층의 서비스 객체가 로직을 수행하면,
//		반드시 Model이 생성된다
//		======================================================
		
		try { 
			switch(command) {
				case "/insert.do": new InsertServiceImpl().execute(request, response);
				case "/select.do": new SelectServiceImpl().execute(request, response);
				case "/update.do": new UpdateServiceImpl().execute(request, response);
				case "/delete.do": new DeleteServiceImpl().execute(request, response);
				default : 		   new UnknownServiceImpl().execute(request,response);		
			} // switch	
		} catch (Exception e) {
			throw new ServletException(e);
		} // try-catch
		
//		=========================================================
//		Step.4 : 비지니스 수행결과 데이터인 Model을 함꼐 전달하여,
//				응답결과 화면을 동적으로 생성하도록 View 호출
//		=========================================================
		RequestDispatcher dispatcher = request.getRequestDispatcher("/View");
		dispatcher.forward(request, response);
		
		log.info("\t+ forwarded request into /View");
		
	} // service

} // end class
