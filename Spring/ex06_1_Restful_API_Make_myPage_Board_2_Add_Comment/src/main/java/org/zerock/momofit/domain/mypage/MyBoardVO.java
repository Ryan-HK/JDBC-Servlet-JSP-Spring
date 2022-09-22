package org.zerock.momofit.domain.mypage;

import java.util.Date;

import lombok.Value;

@Value
public class MyBoardVO {
	
	// 게시판 테이블
	
	private Integer board_no;
	private String title;
	private String text;
	private Integer board_like;
	private Integer hits;
	private Date board_date;
	private Date edit;
	private Integer img_check;
	private Integer user_no;
	private Integer category_no;
	private Integer subject_no;
	
	// 카테고리 Table
	private String category_name;

} // end class
