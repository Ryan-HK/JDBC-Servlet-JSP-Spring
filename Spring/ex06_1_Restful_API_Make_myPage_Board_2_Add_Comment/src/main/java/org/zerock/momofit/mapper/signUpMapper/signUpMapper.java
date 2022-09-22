package org.zerock.momofit.mapper.signUpMapper;

import org.zerock.momofit.domain.signUp.UserDTO;
import org.zerock.momofit.exception.DAOException;

public interface signUpMapper {
	
	// 회원가입
	public abstract Integer UserInsert(UserDTO dto) throws DAOException; 
	
	// id 확인
	public abstract String idCheck(String id) throws DAOException ;
	
	// 닉네임 확인
	public abstract String nickNameCheck(String nickname) throws DAOException ;
}
