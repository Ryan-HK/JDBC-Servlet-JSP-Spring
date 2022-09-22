package org.zerock.momofit.service.mypage;

import java.util.List;

import org.zerock.momofit.domain.mypage.Criteria;
import org.zerock.momofit.domain.mypage.MyBoardVO;
import org.zerock.momofit.exception.ServiceException;

public interface MyBoardService {

	//1. 마이페이지 게시글 조회
	public abstract List<MyBoardVO> getBoardList(Criteria cri) throws ServiceException;
	
	//2. 마이페이지 게시글 총 개수
	public abstract int getBoardCount(Criteria cri) throws ServiceException;
	
	//3. 마이페이지 내글 삭제
	public abstract boolean removeArtice(int board_no) throws ServiceException;
	
} // end interface
