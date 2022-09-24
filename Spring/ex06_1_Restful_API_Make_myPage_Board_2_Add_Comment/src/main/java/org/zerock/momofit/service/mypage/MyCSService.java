package org.zerock.momofit.service.mypage;

import java.util.List;

import org.zerock.momofit.domain.mypage.Criteria;
import org.zerock.momofit.domain.mypage.MyQnaVO;
import org.zerock.momofit.domain.mypage.MyReportVO;

import org.zerock.momofit.exception.ServiceException;


public interface MyCSService {

	// 1. 마이페이지 Qna 글 리스트 조회
	public abstract List<MyQnaVO> getQnaList(Criteria cri) throws ServiceException;
	
	// 2. 마이페이지 Qna 글 개수 획득
	public abstract int getQnaCount(Criteria cri) throws ServiceException;
	
	// 3. 마이페이지 Qna 글 삭제하기
	public abstract boolean removeQna(int qna_no) throws ServiceException;
	
	
	// 4. 마이페이지 Report 내역 조회
	public abstract List<MyReportVO> getReportList(Criteria cri) throws ServiceException;
	
	// 5. 마이페이지 Report 개수 획득
	public abstract int getReportCount(Criteria cri) throws ServiceException;
	
	// 6. 마이페이지 Qna 글 삭제하기
	public abstract boolean removeReport(int report_no) throws ServiceException;
	
	
} // end interface
