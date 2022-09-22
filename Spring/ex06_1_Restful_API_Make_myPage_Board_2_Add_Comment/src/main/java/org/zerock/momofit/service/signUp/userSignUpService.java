package org.zerock.momofit.service.signUp;

import org.springframework.web.multipart.MultipartFile;
import org.zerock.momofit.domain.signUp.UserDTO;
import org.zerock.momofit.exception.ServiceException;

public interface userSignUpService {
	
	// 회원가입
	public abstract boolean UserSignUp(UserDTO dto, MultipartFile file) throws ServiceException; 
	
	// 아이디 중복 체크
	public abstract boolean idCheck(String id) throws ServiceException;
	
	// 닉네임 중복 체크
	public abstract boolean nickNameCheck(String nickname) throws ServiceException;

	
}
