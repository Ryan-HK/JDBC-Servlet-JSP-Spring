package org.zerock.myapp.service.user;

import org.zerock.myapp.domain.user.LoginDTO;
import org.zerock.myapp.domain.user.UserVO;

public interface UserService {

	// 1. 전송받은 사용자의 아이디와 암호로 (LoginDTO)로 사용자 정보를 획득
	public abstract UserVO findUser(LoginDTO dto) throws Exception;
	
} // end interface
