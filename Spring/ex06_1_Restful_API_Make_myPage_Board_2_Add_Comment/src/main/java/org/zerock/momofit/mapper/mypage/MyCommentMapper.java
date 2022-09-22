package org.zerock.momofit.mapper.mypage;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.momofit.domain.mypage.Criteria;
import org.zerock.momofit.domain.mypage.MyCommentVO;
import org.zerock.momofit.exception.DAOException;

public interface MyCommentMapper {

	// 1.페이징처리된, 내 댓글 보기
	public abstract List<MyCommentVO> getMyCommentListWithPaging(
			@Param("cri")Criteria cri
			) throws DAOException;
	
	
	// 2. 내 댓글 총 개수 구하기
	public abstract Integer getMyCommentCount(
			@Param("cri")Criteria cri
			) throws DAOException;
	
	// 3. 내가 쓴 댓글 삭제하기
	public abstract int deleteMyCommentReply(@Param("comm_no") int comm_no) throws DAOException;
	
} // end interface
