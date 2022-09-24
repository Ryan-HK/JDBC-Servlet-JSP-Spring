package org.zerock.momofit.service.mypage;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.momofit.domain.mypage.Criteria;
import org.zerock.momofit.domain.mypage.MyGroupVO;
import org.zerock.momofit.exception.ServiceException;
import org.zerock.momofit.mapper.mypage.MyGroupMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@AllArgsConstructor

@Service
public class MyGroupServiceImpl implements MyGroupService {

	private MyGroupMapper myGroupMapper;
	
	// 1. 내가 참여한 Group List 
	@Override
	public List<MyGroupVO> getGroupList(Criteria cri) throws ServiceException {
		log.trace("getGroupList() invoked.");
		
		try {
			
			return this.myGroupMapper.getGroupListWithPaging(cri);
			
			
		} catch (Exception e) {
			throw new ServiceException(e);
		} // try-catch
		
	} // getGroupList

	@Override
	public int getGroupCount(int user_no) throws ServiceException {
		log.trace("getCroupCount() invoked.");
		
		try {
			
			return this.myGroupMapper.getMyGroupCount(user_no);
			
		} catch (Exception e) {
			throw new ServiceException(e);
		}
	} // getGroupCount

	
	
} // interface
