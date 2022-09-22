package org.zerock.momofit.service.signUp.mail;

import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSendException;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@Service
public class MailServiceImpl implements MailService {
	
	@Setter(onMethod_ = {@Autowired}) 
	private JavaMailSenderImpl mailSender;
	private int authNumber;
	
	public void makeRandomNumber() {
		// 난수의 범위 111111 ~ 999999 (6자리 난수)
		int checkNum = new Random().nextInt(888888) + 111111;	
		authNumber = checkNum;
		
		log.info("인증번호 : {}", checkNum);
		
	} // makeRandomNumber
	
	
	@Override
	public String mailSend(String email) throws MailSendException {
		makeRandomNumber();

		String toMail = email;
		String title = "회원가입 인증메일 입니다.";
		String content = 
				"<h2>MoMofit 서비스를 이용하기 위해 아래의 인증번호를 작성해 주세요</h2>" +
				"<br><br>" +
				"인증번호 : <b>"+ this.authNumber +"</b>" +
				"<br><br><br>" +
				"모두 모여라 피트니스 Team : 내손을 자바";
		
		mailPush( toMail, title, content);
		
		return Integer.toString(this.authNumber);
	} // mailSend
	
	public void mailPush(String toMail, String title, String content) {
		MimeMessage message = mailSender.createMimeMessage();
		
		try {
			// multipart 형식의 메세지 전달이 가능
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8"); 
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content, true);
			this.mailSender.send(message);
			
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} // try-catch
		
	} // mailPush

} // end class
