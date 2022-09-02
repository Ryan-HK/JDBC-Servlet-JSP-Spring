package org.zerock.myapp.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.myapp.domain.BoardDTO;
import org.zerock.myapp.domain.BoardVO;
import org.zerock.myapp.domain.Criteria;
import org.zerock.myapp.exception.ServiceException;
import org.zerock.myapp.mapper.BoardMapper;

import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@Service
public class BoardServiceImpl implements BoardService {

	// -- 비니지스 계층에서는 영속성 계층을 통해, DB에 접근한다.
	// -- 그러기 위해, 영속성 계층의 Bean을 주입받는다.
	@Setter(onMethod_= {@Autowired})
	private BoardMapper mapper;
	
	@Override
	public List<BoardVO> getList() throws ServiceException {
		log.trace("getList() invoked.");
		
		try {
			return this.mapper.selectAllList();
		} catch (Exception e) {
			throw new ServiceException(e);
		}
		
	} // getList

	@Override
	public boolean register(BoardDTO dto) throws ServiceException {
		
		try {			
			return this.mapper.insertSelectKey(dto) == 1;
		} catch (Exception e) {
			throw new ServiceException(e);
		}

	} // register

	@Override
	public boolean modify(BoardDTO dto) throws ServiceException {

		try {		
			return this.mapper.update(dto) == 1;		
		} catch (Exception e) {
			throw new ServiceException(e);
		}
			
	} // modify

	@Override
	public boolean remove(BoardDTO dto) throws ServiceException {
		
		try {		
			return this.mapper.delete(dto.getBno()) == 1;		
		} catch (Exception e) {
			throw new ServiceException(e);
		}
		
	} // remove

	@Override
	public BoardVO get(BoardDTO dto) throws ServiceException {

		try {
			return this.mapper.select(dto);
		} catch (Exception e) {
			throw new ServiceException(e);
		}
		
	} // get

	@Override
	public List<BoardVO> getListPerPage(Criteria cri) throws ServiceException {
		log.trace("getListPerPages({}) invoked.", cri);
		
		try {
			
			return this.mapper.selectListWithPaging(cri);
			
		} catch (Exception e) {
			throw new ServiceException(e);
		}
	} // getListPerPages

	@Override
	public int getTotal() throws ServiceException {
		log.trace("getTotal() invoked.");
		
		try {
			
			return this.mapper.getTotalCount();
			
		} catch (Exception e) {
			throw new ServiceException(e);
		}
	} // getTotal

	@Override
	public Date getCurrentTime() throws ServiceException {
		
		try {
			
			return this.mapper.getCurrentTime();
			
		} catch (Exception e) {
			throw new ServiceException(e);
		}

	} // getTotal

} // end class
