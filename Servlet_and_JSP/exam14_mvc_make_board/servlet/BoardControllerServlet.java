package exam10_mvc_make_board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2

@WebServlet("/board/*")
public class BoardControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	BoardService boardService;
	ArticleVO articleVO;
	
    @Override
	public void init(ServletConfig config) throws ServletException {
    	// Servlet 초기화 시, boardService 초기화한다.
		boardService = new BoardService();
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		log.info("service(request, response) invoked.");
		String nextPage = "";
		request.setCharacterEncoding("utf8");
		response.setContentType("text/html; charset=utf8");
		
		// Client로부터 요청받은 URI주소 획득한다.
		String action = request.getPathInfo();
		
		if(action == null) {
			action = "";
		}
		
		try {
			List<ArticleVO> articlesList = new ArrayList<ArticleVO>();
			
			switch(action) {
			
				case "" : {
					// 공백의 문자 (즉 NULL 값)시, -> 게시글 조회페이지
					articlesList = boardService.listArticles();
					request.setAttribute("articlesList", articlesList);
					nextPage = "/board01/listArticles.jsp";
					
					RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
					dispatch.forward(request, response);
					
					break;
				}
				
				// Client의 요청이 게시판조회일 경우
				case "/listArticles.do" : {
					articlesList = boardService.listArticles();
					request.setAttribute("articlesList", articlesList);
					nextPage = "/board01/listArticles.jsp";
					
					RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
					dispatch.forward(request, response);
					
					break;
				}
				
				// Client가 게시판에서 글쓰기를 입력했을 때, 글쓰기 페이지로 이동
				case "/articleForm.do" : {
					nextPage = "/board01/articleForm.jsp";
					
					RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
					dispatch.forward(request, response);
					
					break;
				}
				
				case "/addArticle.do" : {
					
					String title = request.getParameter("title");
					String content = request.getParameter("content");
					log.info("글을 등록합니다. title : {}, content : {}", title, content);
					
					articleVO = new ArticleVO();
					
					articleVO.setParentNO(0);
					articleVO.setId("Ryan");
					articleVO.setTitle(title);
					articleVO.setContent(content);
					
					boardService.addArticle(articleVO);
					
//					articlesList = boardService.listArticles();
//					request.setAttribute("articlesList", articlesList);
					nextPage = "listArticles.do";
					
					response.sendRedirect(nextPage);

					
					break;
				}
				
				case "/viewArticle.do" : {
					
					String articleNO = request.getParameter("articleNO");
					log.info("이 글을 조회합니다. articleNO : {}", articleNO);
					
					
					if(articleNO != null && !"".equals(articleNO)){
						articleVO = boardService.viewArticle(Integer.parseInt(articleNO));
					} else {
						articleVO = (ArticleVO) request.getAttribute("articleVO");
					}
					
					log.info("articleVO : {}", articleVO);
					
					articlesList = boardService.listArticles();
					request.setAttribute("articlesList", articlesList);
					
					request.setAttribute("articleVO", articleVO);
					
					nextPage = "/board01/viewArticle.jsp";
					
					RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
					dispatch.forward(request, response);
					
					break;
				}
				
				case "/modArticle.do" : {
					
					String articleNO = request.getParameter("articleNO");
					String content = request.getParameter("content");
					log.info("이 글을 수정합니다 articleNO : {}, content : {}", articleNO, content);
					
					
					articleVO = new ArticleVO();
					articleVO.setContent(content);
					
					if(articleNO != null && !"".equals(articleNO)) {
						articleVO.setArticleNO(Integer.parseInt(articleNO));
					}

					boardService.modArticle(articleVO);
					
					
					nextPage = "viewArticle.do"+"?articleNO="+articleNO;
					
					response.sendRedirect(nextPage);
					
					break;
					
				}
				
				case "/removeArticle.do" : {
					Integer articleNO = Integer.parseInt(request.getParameter("articleNO"));
					log.info("{}번 글을 삭제합니다.", articleNO);
					
					List<Integer> articleNOList = boardService.removeArticle(articleNO);
					
					nextPage = "listArticles.do";
					
					response.sendRedirect(nextPage);
					break;
					
				}	
				
				case "/replyForm.do" : {
					nextPage = "/board01/replyForm.jsp";
					
					Integer parentNO = Integer.parseInt(request.getParameter("parentNO"));
					
					request.setAttribute("parentNO", parentNO);
					
					RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
					dispatch.forward(request, response);
					
					break;
				}
				
				
				
				
				
				case "/replyArticle.do" : {

					Integer parentNO = Integer.parseInt(request.getParameter("parentNO"));
					String title = request.getParameter("title");
					String content = request.getParameter("content");
					
	
					articleVO = new ArticleVO();
					articleVO.setId("Ryan");
					articleVO.setParentNO(parentNO);
					articleVO.setTitle(title);
					articleVO.setContent(content);
					
					boardService.addArticle(articleVO);
					
					nextPage = "listArticles.do";
					
					response.sendRedirect(nextPage);
					
					
					
					break;
					
				}	
			
			} //switch
			
			
		} catch (Exception e) {
			throw new ServletException(e);
		}
		
		
	} // service


} // end class
