package org.zerock.momofit.service.mypage;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.momofit.domain.mypage.Criteria;
import org.zerock.momofit.domain.mypage.MyCommentVO;
import org.zerock.momofit.exception.ServiceException;
import org.zerock.momofit.mapper.mypage.MyCommentMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@AllArgsConstructor

@Service
public class MyCommentServiceImpl implements MyCommentService {

	private final MyCommentMapper myCommentMapper;
	
	//1. 마이페이지 내 댓글리스트 조회
	@Override
	public List<MyCommentVO> getCommentList(Criteria cri) throws ServiceException {
		log.trace("getCommentList() invoked.");
		
		try {
			
			return this.myCommentMapper.getMyCommentListWithPaging(cri);
			
		} catch (Exception e) {
			throw new ServiceException(e);
		}
		
	} // getCommentList

	//2. 마이페이지 내 댓글 총 개수
	@Override
	public int getCommentCount(Criteria cri) throws ServiceException {
		log.trace("getCommentCount() invoked.");
		
		try {
			
			return this.myCommentMapper.getMyCommentCount(cri);
			
		} catch (Exception e) {
			throw new ServiceException(e);
		}
		
	} // getCommentCount

	@Override
	public boolean removeReply(int comm_no) throws ServiceException {
		log.trace("removeReply({}) invoked.", comm_no);
		
		try {
			
			return this.myCommentMapper.deleteMyCommentReply(comm_no) == 1;
			
		} catch (Exception e) {
			throw new ServiceException(e);
		}
		
	} // removeReply
	

}
