package exam10_mvc_make_board;

import java.sql.SQLException;
import java.util.List;

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
	
	public ArticleVO viewArticle(int articleNO) {
		ArticleVO articleVO = null;
		article = BoardDAO.selectArticle(articleNO);
		return article;
	}
	
	
} // end class
