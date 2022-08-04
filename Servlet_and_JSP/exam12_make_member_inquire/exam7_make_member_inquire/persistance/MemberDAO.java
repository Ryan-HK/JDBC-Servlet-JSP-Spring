package exam7_make_member_inquire.persistance;

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

import exam7_make_member_inquire.domain.MemberBean;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor
public class MemberDAO {
	
	private static DataSource dataSource;
	
	static {
		
		try {
			// 1. JNDI Tree 뿌리(Root)에 접근하게 해주는 객체 생성
			Context ctx = new InitialContext();
			
			// 2. Context 객체를 가지고, 저장 된 이름을 가지는 리소스 획득
			MemberDAO.dataSource = (DataSource) ctx.lookup("java:comp/env/jdbc/OracleCloudATP_WEB_USER");
			
			if(dataSource == null) {
				log.info("DB 정보를 얻지 못했습니다.");
			} else {
				log.info("DB 정보를 성공적으로 얻었습니다.");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	} // static initializer

	
	// 회원정보 조회 : t_member table의 전체 회원을 조회
	public List<MemberBean> listMembers() throws SQLException {
		log.trace("listMembers() invoked.");
		
		try {
			
			Connection conn = MemberDAO.dataSource.getConnection();
			String query = "SELECT * FROM t_member order by joinDate desc";
			
			
			PreparedStatement pstmt = conn.prepareStatement(query);
			
			ResultSet rs = pstmt.executeQuery();
			
			
			List<MemberBean> list = new ArrayList<>();
			
			try(conn; pstmt; rs;){
				
				while(rs.next()) {
					String id = rs.getString("id");
					String pwd = rs.getString("pwd");
					String name = rs.getString("name");
					String Email = rs.getString("email");
					Date joinDate = rs.getDate("joinDate");
					
					// DB조회하여, 받은 회원정보를 MemberBean 형태로 저장
					// List 컬렉션에 저장한다.
					MemberBean vo = new MemberBean();
					vo.setId(id);
					vo.setPwd(pwd);
					vo.setName(name);
					vo.setEmail(Email);
					vo.setJoinDate(joinDate);
					
					list.add(vo);
				} // while

	
			} // try-with-resources
			
			log.info("{} 가 조회됩니다.", list);
			
			return list;
			
		} catch (Exception e) {
			throw new SQLException(e);
		} // try-catch
		
	} // listMembers
	
	// 회원가입 : t_member table에 회원정보를 저장
	public void addMember(MemberBean memberBean) throws SQLException {
		log.trace("addMember({}) invoked", memberBean);
		
		try {
			Connection conn = MemberDAO.dataSource.getConnection();
			String id = memberBean.getId();
			String pwd = memberBean.getPwd();
			String name = memberBean.getName();
			String email = memberBean.getEmail();
			
			String query = "insert into t_member";
			query += "(id, pwd, name, email)";
			query += "values(?,?,?,?)";
			
			PreparedStatement pstmt = conn.prepareStatement(query);
			
			try(conn; pstmt;){
							
				pstmt.setString(1, id);
				pstmt.setString(2, pwd);
				pstmt.setString(3, name);
				pstmt.setString(4, email);
				pstmt.executeUpdate();
				
				log.info("사용자 id = {} 가 등록되었습니다.", id);
			} // try-with-resources

			
		} catch (Exception e) {
			throw new SQLException(e);
		} // try-catch

	} // addMember
	
} // end class
