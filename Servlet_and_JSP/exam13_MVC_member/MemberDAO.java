package exam8_mvc_member;

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
public class MemberDAO {

	private DataSource dataSource;
	Connection conn;
	
	// MemberDAO의 생성자
	// Connection 객체를 획득할 수 있는 DataSource를 초기화 한다.
	public MemberDAO() {
		
		try {
			// 1. JNDI Tree Root에 접근하게 해주는 객체 생성
			Context ctx = new InitialContext();
			
			// 2. Context객체를 가지고, 저장 된 이름을 가지는 리소스 획득
			dataSource = (DataSource) ctx.lookup("java:comp/env/jdbc/OracleCloudATP_WEB_USER");
			
			if(dataSource == null) {
				log.info("DB정보를 얻지못했습니다.");
			} else {
				log.info("DB정보를 성공정으로 얻었습니다. : {}", dataSource);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	} // Constructor
	
	
	// 회원정보를 조회하는 메소드
	// 호출 시, 회원정보를 ArrayList에 담아서 반환한다.
	public List<MemberVO> listMembers() throws SQLException {
		log.info("listMembers() invoked");
		
		List<MemberVO> membersList = new ArrayList<>();
		
	
		Connection conn = dataSource.getConnection();
		String query = "SELECT * FROM t_member ORDER BY joinDate desc";
		
		PreparedStatement pstmt = conn.prepareStatement(query);
		
		ResultSet rs = pstmt.executeQuery();
		
		try (conn; pstmt; rs){
			
			while(rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");
				
				MemberVO vo = new MemberVO(id, pwd, name, email, joinDate);
				log.info("id : {}", id);
				
				membersList.add(vo);
				
			} // while
			
		} // try-with-resources
		
		log.info("{} 를 반환합니다.", membersList);
		return membersList;

	} // listMembers
	
	
	// Member를 추가하는 메소드
	public void addMember (MemberVO vo) throws SQLException {
		log.info("addMember(vo) invoked");

		Connection conn = dataSource.getConnection();
		
		// Client로부터 전송받은 전송파라미터를 MemberVO객체로 수집하여 
		// MemberDAO에게 전달 된 것이다.
		// MemberDAO로 부터, 전송 된 각 속성 값을 얻을 수 있다.
		
		// 단! joinDate는 자동으로 생성 되는 속성 값으로, 추가해줄 필요가 없다.
		String id = vo.getId();
		String pwd = vo.getPwd();
		String name = vo.getName();
		String email = vo.getEmail();
		
		log.info("id : {}, pwd : {}, name : {}, email : {}",id,pwd,name,email);
		
		String query = "INSERT INTO t_member(id, pwd, name, eamil)" 
						+ " VALUES(?,?,?,?)";
		
		PreparedStatement pstmt = conn.prepareStatement(query);
		
		// bindValue값 설정
		pstmt.setString(1, id);
		pstmt.setString(2,  pwd);
		pstmt.setString(3, name);
		pstmt.setString(4, email);
		
		// SQL문 실행
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
	} // addMember
	
	
} // end class
