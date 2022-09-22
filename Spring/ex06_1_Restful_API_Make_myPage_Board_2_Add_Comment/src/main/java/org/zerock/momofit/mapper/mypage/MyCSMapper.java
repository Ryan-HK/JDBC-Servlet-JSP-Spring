package org.zerock.momofit.mapper.mypage;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.momofit.domain.mypage.Criteria;
import org.zerock.momofit.domain.mypage.MyQnaVO;
import org.zerock.momofit.domain.mypage.MyReportVO;
import org.zerock.momofit.exception.DAOException;

public interface MyCSMapper {

	//------------------------------------------
	// QNA
	//------------------------------------------
	
	
	// 1. 내 "문의사항" 글 리스트 조회
	public abstract List<MyQnaVO> getQnaListWithPaging(
			@Param("cri")Criteria cri
			) throws DAOException;
	
	// 2. 내 "문의사항" 글 개수 조회
	public abstract int getQnaCount(
			@Param("cri")Criteria cri
			) throws DAOException;
	
	
	
	
	//------------------------------------------
	// REPORT
	//------------------------------------------
	
	// 4. 내 "신고내역" 글 리스트 조회
	public abstract List<MyReportVO> getReportListWithPaging(
			@Param("cri") Criteria cri
			) throws DAOException;
	
	// 5. 내 "신고내역" 글 총 개수 조회
	public abstract int getReportCount(
			@Param("cri")Criteria cri
			) throws DAOException;
	
	
} // end interface
