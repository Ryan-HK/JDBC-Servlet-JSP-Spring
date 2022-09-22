package org.zerock.momofit.exception;

public class ServiceException extends Exception {
	
	private static final long serialVersionUID = 1L;

	public ServiceException(String message) {
		super(message);
	}
	
	public ServiceException(Exception e) {
		super(e);
	}
	
	
} // end class
