package org.zerock.momofit.mapper.mypage;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.momofit.domain.mypage.Criteria;
import org.zerock.momofit.domain.mypage.MyBoardVO;
import org.zerock.momofit.exception.DAOException;

public interface MyBoardMapper {

	// 1. 내가 쓴글 리스트 조회 (페이징처리)
	public abstract List<MyBoardVO> getListWithPaging(
			@Param("cri")Criteria cri
			) throws DAOException;
	
	// 2. 내가 쓴글 총 개수 조회
	public abstract int getMyBoardCount(@Param("cri")Criteria cri) throws DAOException;
	
	// 3. 내가 쓴글 삭제하기
	public abstract int deleteMyboardArticle(@Param("board_no") int board_no) throws DAOException;
	
} // end interface
