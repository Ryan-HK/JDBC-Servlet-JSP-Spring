package exam1_command_and_model.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exam1_command_and_model.domain.EmpDTO;
import exam1_command_and_model.exception.BusinessException;
import exam1_command_and_model.persistance.EmpDAO;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@NoArgsConstructor
@Log4j2
public class InsertServiceImpl implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws BusinessException {
		log.trace("execute(request, response)");

		
		try {
		EmpDTO dto = (EmpDTO) request.getAttribute(Service.DTO);
		
		EmpDAO dao = new EmpDAO();
		
		int insertedRows = dao.insert(dto);
		 
		request.setAttribute(Service.MODEL, insertedRows);
		
		} catch (Exception e) {
			throw new BusinessException(e);
		}
	} // execute

} // end class
