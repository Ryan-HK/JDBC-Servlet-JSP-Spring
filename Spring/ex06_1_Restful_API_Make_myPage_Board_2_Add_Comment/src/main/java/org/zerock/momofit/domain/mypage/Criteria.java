package org.zerock.momofit.domain.mypage;

import lombok.Data;
import lombok.extern.log4j.Log4j2;

@Log4j2
@Data
public class Criteria {


	private int currPage = 1;			// 현재 표시할 페이지 번호
	private int amount = 10;			// 한 페이지당 보여줄 레코드 건수
	private int pagesPerPage = 5;		// 한 페이지당 보여줄 페이지목록의 길이
	
	// User 정보
	private Integer user_no;
	
	// 게시판 카테고리 정보
	private Integer category;
	
	// 검색조건
	private Integer type;
	private String keyword;
	
} // end class
