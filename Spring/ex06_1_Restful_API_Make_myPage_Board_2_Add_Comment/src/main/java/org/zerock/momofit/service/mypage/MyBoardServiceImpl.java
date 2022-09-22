package org.zerock.momofit.service.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.momofit.domain.mypage.Criteria;
import org.zerock.momofit.domain.mypage.MyBoardVO;
import org.zerock.momofit.exception.ServiceException;
import org.zerock.momofit.mapper.mypage.MyBoardMapper;

import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@Service
public class MyBoardServiceImpl implements MyBoardService {

	@Setter(onMethod_= {@Autowired})
	private MyBoardMapper myboardMapper;
	
	//---------------------------------------------
	//1. 페이징 처리된 "내 글" 리스트 조회"
	//---------------------------------------------
	@Override
	public List<MyBoardVO> getBoardList(Criteria cri) throws ServiceException {
		log.trace("getBoardList() invoked.");
		
		try {
			return this.myboardMapper.getListWithPaging(cri);
			
			
		} catch (Exception e) {
			throw new ServiceException(e);
		}

	} // getBoardList
	
	//---------------------------------------------
	//2. "내 글" 총 개수 구하기
	//---------------------------------------------
	@Override
	public int getBoardCount(Criteria cri) throws ServiceException {
		log.trace("getBoardCount({}) invoked.");
		
		try {
			
			return this.myboardMapper.getMyBoardCount(cri);
			
		} catch (Exception e) {
			throw new ServiceException(e);
		}
	} // getBoardCount

	
	//---------------------------------------------
	//3. "내 글" 삭제하기
	//---------------------------------------------
	@Override
	public boolean removeArtice(int board_no) throws ServiceException {
		
		try {
			
			return this.myboardMapper.deleteMyboardArticle(board_no) == 1;
			
		} catch (Exception e) {
			throw new ServiceException(e);
		}
		
	} // removeArticle

} // end class
