package org.zerock.myapp.exception;

public class CommonException extends Exception {

	private static final long serialVersionUID = 1L;
	
	public CommonException(String message) {
		super(message);
	} // Constructor
	
	public CommonException(Exception e) {
		super(e);
	} // Constructor
	
} // end class
