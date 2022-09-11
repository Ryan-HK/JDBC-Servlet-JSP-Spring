package org.zerock.myapp.mapper;

import org.zerock.myapp.domain.user.LoginDTO;
import org.zerock.myapp.domain.user.UserVO;

public interface UserMapper {

	// 1. User정보를 얻어온다.
	public abstract UserVO selectUser(LoginDTO dto) throws Exception;
	
}
