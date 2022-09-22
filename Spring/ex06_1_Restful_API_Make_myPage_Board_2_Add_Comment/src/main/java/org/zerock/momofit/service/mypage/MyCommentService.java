package org.zerock.momofit.service.mypage;

import java.util.List;

import org.zerock.momofit.domain.mypage.Criteria;
import org.zerock.momofit.domain.mypage.MyCommentVO;
import org.zerock.momofit.exception.ServiceException;

public interface MyCommentService {
	
	//1. 마이페이지 게시글 조회
	public abstract List<MyCommentVO> getCommentList(Criteria cri) throws ServiceException;
	
	//2. 마이페이지 게시글 총 개수
	public abstract int getCommentCount(Criteria cri) throws ServiceException;
	
	//3. 마이페이지 내 댓글 삭제
	public abstract boolean removeReply(int comm_no) throws ServiceException;

}
