package exam1_command_and_model.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exam1_command_and_model.exception.BusinessException;

public interface Service {
	public static final String DTO = "__DTO__";
	public static final String MODEL = "__MODEL__";
	
	public abstract void execute(HttpServletRequest request, HttpServletResponse Response)
		throws BusinessException;
}
