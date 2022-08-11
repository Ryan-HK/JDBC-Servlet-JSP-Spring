package exam10_mvc_make_board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import lombok.extern.log4j.Log4j2;


@Log4j2
public class BoardDAO {
	
	private DataSource dataFactory;
	
	
	
	public BoardDAO() {
		
		try {
			
			Context ctx = new InitialContext();
			dataFactory = (DataSource) ctx.lookup("java:comp/env/jdbc/OracleCloudATP_WEB_USER");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	} // Constructor
	
	
	private int getNewArticleNO() {
		try {
			Connection conn = dataFactory.getConnection();
			String query = "SELECT max(articleNO) from t_board";
			
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				return (rs.getInt(1) + 1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
	
	
	public List<ArticleVO> selectAllArticles() throws SQLException {
		log.trace("selectAllArticles() invoked.");
		
		List<ArticleVO> articlesList = new ArrayList();
		
		Connection conn = dataFactory.getConnection();
		String query = "SELECT LEVEL, articleNO, parentNO,"
				+ " title, content, id, writeDate"
				+ " FROM t_board"
				+ " START WITH parentNO=0"
				+ " CONNECT BY PRIOR articleNO=parentNO"
				+ " ORDER SIBLINGS BY articleNO ASC";
		
		log.info("query : {}", query);
		
		PreparedStatement pstmt = conn.prepareStatement(query);
		ResultSet rs = pstmt.executeQuery();
		
		try(conn; pstmt; rs){
			
			while(rs.next()) {
				int level = rs.getInt("level");
				int articleNO = rs.getInt("articleNO");
				int parentNO = rs.getInt("parentNO");
				String title = rs.getString("title");
				String content = rs.getString("content");
				String id = rs.getString("id");
				Date writeDate = rs.getDate("writeDate");
				
				ArticleVO article = new ArticleVO();
				article.setLevel(level);
				article.setArticleNO(articleNO);
				article.setParentNO(parentNO);
				article.setTitle(title);
				article.setContent(content);
				article.setId(id);
				article.setWriteDate(writeDate);
				
				articlesList.add(article);
				
			} // while
			
			return articlesList;
			
		} // try-with-resources
		
	} // selectAllArticles
	
	public void insertNewArticle(ArticleVO article) throws SQLException {
		log.trace("insertNewArticle(article) invoked.");
		
		Connection conn = dataFactory.getConnection();
	
		
		int articleNO = getNewArticleNO();
		int parentNo = article.getParentNO();
		String title = article.getTitle();
		String content = article.getContent();
		String id = article.getId();
		
		String query = "INSERT INTO t_board (articleNO, parentNO, title, content, id)"
				+ " VALUES (?,?,?,?,?)";
		
		PreparedStatement pstmt = conn.prepareStatement(query);
		
		pstmt.setInt(1, articleNO);
		pstmt.setInt(2, parentNo);
		pstmt.setString(3, title);
		pstmt.setString(4, content);
		pstmt.setString(5, id);
		
		pstmt.executeUpdate();
		
	} // insertNewArticle
	
	public ArticleVO selectArticle(int articleNO) throws SQLException {
		log.info("selectArticle(articleNO) invoked");
		
		Connection conn = dataFactory.getConnection();
		String query = "SELECT * FROM t_board WHERE articleNO=?";
		
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, articleNO);
		
		ResultSet rs = pstmt.executeQuery();
		ArticleVO articleVO = new ArticleVO();
		try (conn; pstmt; rs;){
			if(rs.next()) {
				Integer _articleNO = rs.getInt("articleNO");
				Integer parentNO = rs.getInt("parentNO");
				String title = rs.getString("title");
				String content = rs.getString("content");
				String imageFileName = rs.getString("imageFileName");
				String id = rs.getString("id");
				Date writeDate = rs.getDate("writeDate");
				
				
				articleVO.setArticleNO(_articleNO);
				articleVO.setParentNO(parentNO);
				articleVO.setTitle(title);
				articleVO.setContent(content);
				articleVO.setImageFileName(imageFileName);
				articleVO.setId(id);
				articleVO.setWriteDate(writeDate);
			}
			
			
		} // try-with-resources
		
		log.info("BoardService ::: selectArticle ::: articleVO : {}", articleVO);
		return articleVO;
		
	} // selectArticle
	
	public void updateArticle(ArticleVO article) throws SQLException {
		log.info("updateArticle(article) invoked.");
		
		Integer articleNO = article.getArticleNO();
		String content = article.getContent();
		
		Connection conn = dataFactory.getConnection();
		String query = "UPDATE t_board set content=? WHERE articleNO=?";
		
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setString(1, content);
		pstmt.setInt(2,articleNO);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
	} // updateArticle
	
	public void deleteArticle(int articleNO) throws SQLException {
		log.trace("deleteArticle(article) invoked.");
		
		
	
		Connection conn = dataFactory.getConnection();
		String query = "DELETE FROM t_board WHERE articleNO IN ( SELECT articleNO FROM t_board START WITH articleNO = ? CONNECT BY PRIOR articleNO = parentNO )";
		
		
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setInt(1,articleNO);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
	} // updateArticle
	
	public List<Integer> selectRemovedArticles(int articleNO) throws SQLException {
		log.trace("selectRemovedArticles(article) invoked.");
		
		List<Integer> articleNOList = new ArrayList<Integer>();
		
		Connection conn = dataFactory.getConnection();
		String query = "SELECT articleNO FROM t_board WHERE articleNO = ? CONNECT BY PRIOR articleNO = parentNO";
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, articleNO);
		
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next()) {
			articleNO = rs.getInt("articleNO");
			articleNOList.add(articleNO);
		} // while
		
		pstmt.close();
		conn.close();
		
		return articleNOList;
		
	} // selectRemovedArticles

} // end class
