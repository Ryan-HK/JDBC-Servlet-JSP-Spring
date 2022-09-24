package org.zerock.momofit.service.mypage;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.momofit.domain.mypage.Criteria;
import org.zerock.momofit.domain.mypage.MyQnaVO;
import org.zerock.momofit.domain.mypage.MyReportVO;
import org.zerock.momofit.exception.ServiceException;
import org.zerock.momofit.mapper.mypage.MyCSMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@AllArgsConstructor

@Service
public class MyCSServiceImpl implements MyCSService {
	
	
	private MyCSMapper myCSMapper;
	
	
	// 1. 내 Qna 글 리스트 조회
	@Override
	public List<MyQnaVO> getQnaList(Criteria cri) throws ServiceException {
		log.trace("getQnaList() invoked.");
		
		try {
			
			return this.myCSMapper.getQnaListWithPaging(cri);
			
		} catch (Exception e) {
			throw new ServiceException(e);
		}
		
	} // getQnaList
	

	// 2. 내 Qna PageDTO 정보 획득
	@Override
	public int getQnaCount(Criteria cri) throws ServiceException {
		log.trace("getQnaPageDTO() invoked.");
		
		try {
			
			return this.myCSMapper.getQnaCount(cri);

			
		} catch (Exception e) {
			throw new ServiceException(e);
		}

		
	} // getQnaPageDTO
	
	
	// 3. 내 Qna PageDTO 정보 획득
	@Override
	public boolean removeQna(int qna_no) throws ServiceException {
		log.trace("removeQna() invoked.");
		
		try {
			
			return this.myCSMapper.deleteMyQna(qna_no) == 1;
			
		} catch (Exception e) {
			throw new ServiceException(e);
		}

	} // removeQna
	
	
	// 4. 내 Report 글 리스트 조회
	@Override
	public List<MyReportVO> getReportList(Criteria cri) throws ServiceException {
		log.trace("getReportList() invoked.");
		
		try {
			
			return this.myCSMapper.getReportListWithPaging(cri);
			
		} catch (Exception e) {
			throw new ServiceException(e);
		}
		
	}

	// 5. 내 Report PageDTO 조회
	@Override
	public int getReportCount(Criteria cri) throws ServiceException {
		log.trace("getReportCount() invoked.");
		
		try {
			
			return this.myCSMapper.getReportCount(cri);
			
		} catch (Exception e) {
			throw new ServiceException(e);
		}
	} // getReportCount


	// 6. 내 Report PageDTO 조회
	@Override
	public boolean removeReport(int report_no) throws ServiceException {
		log.trace("removeReport() invoked.");
		
		try {
			
			return this.myCSMapper.deleteMyReport(report_no) == 1;
			
		} catch (Exception e) {
			throw new ServiceException(e);
		}

	} // removeReport

	
	
} // end class
