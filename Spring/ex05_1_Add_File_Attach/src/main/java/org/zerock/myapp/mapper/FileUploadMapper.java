package org.zerock.myapp.mapper;

import org.zerock.myapp.domain.BoardAttachDTO;
import org.zerock.myapp.exception.DAOException;

public interface FileUploadMapper {

	//1. 파일 업로드 내역 등록
	public Integer fileInsert(BoardAttachDTO dto) throws DAOException;
	
} // end interface
