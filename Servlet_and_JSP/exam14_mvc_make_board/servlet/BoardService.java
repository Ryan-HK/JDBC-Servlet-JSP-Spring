package exam10_mvc_make_board;

import java.sql.SQLException;
import java.util.List;

import lombok.extern.log4j.Log4j2;

@Log4j2
public class BoardService {
	private BoardDAO boardDAO;
	
	public BoardService() {
		boardDAO = new BoardDAO();
		
	} // Constructor

	public List<ArticleVO> listArticles() throws SQLException  {

		List<ArticleVO> listArticle = boardDAO.selectAllArticles();
		
		return listArticle;
		
	} // listArticles
	
	
	public void addArticle(ArticleVO article) throws SQLException {
		
		boardDAO.insertNewArticle(article);
		
	} // addArticle
	
	public ArticleVO viewArticle(int articleNO) throws SQLException {
		log.info("viewArticle(articleNO) invoked");
		ArticleVO articleVO = null;
		articleVO = boardDAO.selectArticle(articleNO);
		
		log.info("BoardService ::: viewArticle ::: articleVO : {}", articleVO);
		return articleVO;
	}
	
	public void modArticle(ArticleVO article) throws SQLException {
		log.info("modArticle(article) invoked.");
		boardDAO.updateArticle(article);
	}
	
	public List<Integer> removeArticle(int articleNO) throws SQLException {
		List<Integer> articleNOList = boardDAO.selectRemovedArticles(articleNO);
		boardDAO.deleteArticle(articleNO);
		return articleNOList;
	}
	
	
} // end class
