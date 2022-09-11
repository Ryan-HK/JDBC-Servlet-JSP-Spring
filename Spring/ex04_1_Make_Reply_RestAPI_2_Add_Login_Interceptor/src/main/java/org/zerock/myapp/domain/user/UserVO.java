package org.zerock.myapp.domain.user;

import lombok.Value;

@Value
public class UserVO {

	private Integer user_no;
	private String userid;
	private String userpw;
	private String uname;
	
	private Integer upoint;
} // end class
