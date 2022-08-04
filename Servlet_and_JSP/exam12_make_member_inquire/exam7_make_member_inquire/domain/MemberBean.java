package exam7_make_member_inquire.domain;

import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberBean implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String id;
	private String pwd;
	private String name;
	private String email;
	private Date joinDate;
} // end class
