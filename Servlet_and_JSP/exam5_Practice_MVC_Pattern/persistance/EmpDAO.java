package exam1_command_and_model.persistance;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import exam1_command_and_model.domain.EmpDTO;
import exam1_command_and_model.domain.EmpVO;
import lombok.Cleanup;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor
public class EmpDAO {

	private static DataSource dataSource;
	
	static {
		
		try {
			// 1. JNDI Tree 뿌리(Root)에 접근하게 해주는 객체를 획득한다.
			Context ctx = new InitialContext();
			
			// 2. Context 객체를 가지고, 지정 된 이름을 가지는 리소스 열매를 찾아서 획득한다.
			EmpDAO.dataSource = (DataSource) ctx.lookup("java:comp:env/jdbc/OracleCloudATP");
			
			log.info("\t+ EmpDAO.dataSource : {}", EmpDAO.dataSource);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	} // static initializer
	
	public List<EmpVO> selectAll() throws SQLException {
		log.trace("select() invoked.");
		
		Connection conn = EmpDAO.dataSource.getConnection();
		
		String sql = "SELECT * FROM emp ORDER BY empno";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
		
		@Cleanup("clear")
		List<EmpVO> list = new Vector<>();
		
		try(conn; pstmt; rs){
			
			while(rs.next()) {
				Integer empno = rs.getInt("empno");
				String ename = rs.getString("ename");
				String job = rs.getString("job");
				Integer mgr = rs.getInt("mgr");
				Date hireDate = rs.getDate("hireDate");
				Double sal = rs.getDouble("sal");
				Double comm = rs.getDouble("comm");
				Integer deptno = rs.getInt("deptno");	
				
				EmpVO vo = new EmpVO(empno, ename, job, mgr, hireDate, sal, comm, deptno);
				list.add(vo);
			} // while
			
		} // try-with-resources
		
		return list;
		
	} // selectAll
	
	public int insert(EmpDTO dto) throws SQLException {
		log.trace("insert({}) invoked.", dto);
		
		Connection conn = EmpDAO.dataSource.getConnection();
		String sql = "INSERT INTO emp (empno, ename, sal, deptno) VALUES (?, ?, ?, ?)";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, dto.getEmpno());
		pstmt.setString(2, dto.getEname());
		pstmt.setDouble(3, dto.getSal());
		pstmt.setInt(4, dto.getDeptno());
		
		try(conn; pstmt;){
			int affectedLines = pstmt.executeUpdate();
			
			return affectedLines;
		} // try-with-resources
	} // insert
	
	
	public int update(EmpDTO dto) throws SQLException {
		log.trace("insert({}) invoked.", dto);
		
		Connection conn = EmpDAO.dataSource.getConnection();
		String sql = "UPDATE emp SET ename = ?, sal = ?, deptno = ? WHERE empno = ?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, dto.getEname());
		pstmt.setDouble(2, dto.getSal());
		pstmt.setInt(3, dto.getDeptno());
		pstmt.setInt(4, dto.getEmpno());
		
		try(conn; pstmt;){
			int affectedLines = pstmt.executeUpdate();
			
			return affectedLines;
		} // try-with-resources
	} // update
	
	public int delete(EmpDTO dto) throws SQLException {
		log.trace("insert({}) invoked.", dto);
		
		Connection conn = EmpDAO.dataSource.getConnection();
		String sql = "DELETE FROM emp WHERE empno = ?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, dto.getEmpno());
		
		try(conn; pstmt;){
			int affectedLines = pstmt.executeUpdate();
			
			return affectedLines;
		} // try-with-resources
	} // delete
	
	
} // end class
