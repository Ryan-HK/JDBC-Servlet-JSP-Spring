package exam1_command_and_model.exception;

import lombok.NoArgsConstructor;

@NoArgsConstructor
public class BusinessException extends Exception {
	private static final long serialVersionUID = 1L;
	
	public BusinessException(String message) {
		super();
	} // constructor
	
	public BusinessException(Exception e) {
		super(e);
	} // constructor
	
} // end class
