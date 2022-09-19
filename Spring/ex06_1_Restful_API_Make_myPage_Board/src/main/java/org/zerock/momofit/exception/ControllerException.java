package org.zerock.momofit.exception;

public class ControllerException extends Exception {

	private static final long serialVersionUID = 1L;

	public ControllerException(String message) {
		super(message);
	} // Constructor
	
	public ControllerException(Exception e) {
		super(e);
	} // Constructor
	
} // end class
