package org.zerock.momofit.service.mypage;

import java.util.List;

import org.zerock.momofit.domain.mypage.Criteria;
import org.zerock.momofit.domain.mypage.MyGroupVO;
import org.zerock.momofit.exception.ServiceException;

public interface MyGroupService {

	// 1. 마이페이지 "모임" 리스트 조회
	public abstract List<MyGroupVO> getGroupList(Criteria cri) throws ServiceException;
	
	
	// 2. 마이페이지 "모임 개수" 조회
	public abstract int getGroupCount(int user_no) throws ServiceException;
	
} // interface
