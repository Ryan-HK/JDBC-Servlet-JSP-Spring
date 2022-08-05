package exam8_mvc_member;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
public class MemberVO {
	
	private String id;
	private String pwd;
	private String name;
	private String email;
	private Date joinDate;
	
	public MemberVO (String id, String pwd, String name, String email ) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
	} // Constructor
	
} // end class
