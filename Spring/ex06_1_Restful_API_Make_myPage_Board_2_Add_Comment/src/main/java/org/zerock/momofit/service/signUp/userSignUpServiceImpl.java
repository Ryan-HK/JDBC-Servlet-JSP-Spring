package org.zerock.momofit.service.signUp;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.zerock.momofit.domain.signUp.UserDTO;
import org.zerock.momofit.domain.signUp.UserVO;
import org.zerock.momofit.exception.ServiceException;
import org.zerock.momofit.mapper.signUpMapper.signUpMapper;

import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@Service
public class userSignUpServiceImpl implements userSignUpService {
	
	@Setter(onMethod_ = {@Autowired})
	private signUpMapper signUpMapper;

	@Override
	public boolean UserSignUp(UserDTO dto, MultipartFile file) throws ServiceException {
		log.trace("UserSignUp() invoked.");		
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		
		String today = sdf.format(date);
		String targetDir = "C:/project/uplodeFile/"+today;
		
		String original = file.getOriginalFilename();
		
		UUID uuid = UUID.randomUUID();
		String profile_temp = uuid + file.getOriginalFilename();
		
		File folder = new File(targetDir);
		
		if(!folder.isDirectory()) {
			folder.mkdirs();
		} // if
		
		log.info("original : {}", original);
		
		try {	
			if( original != "") {
				String targetFile = targetDir +"/"+ profile_temp;
				file.transferTo( new File(targetFile));
				
				dto.setProfile_name(file.getOriginalFilename());
				dto.setProfile_path(targetDir);
				dto.setProfile_temp(profile_temp);			
			}
			return this.signUpMapper.UserInsert(dto) == 1;
		}catch (Exception e) {
			throw new ServiceException(e);
		} // try-catch

	} // UserSignUp
	
	@Override
	public boolean idCheck(String id) throws ServiceException {
		log.trace("idCheck({}) invoked." , id);
		
		try {
			String idResult = this.signUpMapper.idCheck(id);
			
			if(idResult != null) {
				return false;
			} else {
				return true;
			} // if-else
			
		}catch (Exception e) {
			throw new ServiceException(e);
		} // try-catch		
		
	} // idCheck

	@Override
	public boolean nickNameCheck(String nickname) throws ServiceException {
		log.trace("nickNameCheck({}) invoked." , nickname);
		
		try {
			String nickNameResult = this.signUpMapper.nickNameCheck(nickname);
			
			if(nickNameResult != null) {
				return false;
			} else {
				return true;
			} // if-else
			
		}catch (Exception e) {
			throw new ServiceException(e);
		} // try-catch

	} // nickNameCheck


} // end class
