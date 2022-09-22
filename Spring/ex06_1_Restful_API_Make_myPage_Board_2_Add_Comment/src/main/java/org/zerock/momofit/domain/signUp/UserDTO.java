package org.zerock.momofit.domain.signUp;

import java.sql.Date;

import lombok.Data;

@Data
public class UserDTO {
	
	private Integer user_no;
	private String id;
	private String pass;
	private String nickname;
	private String email;
	private String user_name;
	private Date birth;
	private String tel;
	private String gender;
	private String user_loc;
	private String profile_name;
	private String profile_temp;
	private String profile_path;
	private String profile_info;
	private String sports1;
	private String sports2;
	private String sports3;
	
} // end class
