package org.zerock.momofit.mapper.mypage;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.momofit.domain.mypage.Criteria;
import org.zerock.momofit.domain.mypage.MyGroupVO;
import org.zerock.momofit.exception.DAOException;

public interface MyGroupMapper {

	// 1. 나의 "Group" (참여한 모임 / 내가 생성한 모임) 리스트 조회
	public abstract List<MyGroupVO> getGroupListWithPaging(
			@Param("cri")Criteria cri
			) throws DAOException;
	
	// 2. 내가 참여한 그룹의 총 "개수" 구하기
	public abstract int getMyGroupCount(@Param("user_no")int user_no) throws DAOException;
	
	
	
} // end interface
