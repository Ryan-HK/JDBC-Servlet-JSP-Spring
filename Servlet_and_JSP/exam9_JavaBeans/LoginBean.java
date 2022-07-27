package exam5_javabeans;

import java.io.Serializable;

import lombok.Data;

@Data
public class LoginBean implements Serializable {
	private String userid;
	private String passwd;
} // end class
