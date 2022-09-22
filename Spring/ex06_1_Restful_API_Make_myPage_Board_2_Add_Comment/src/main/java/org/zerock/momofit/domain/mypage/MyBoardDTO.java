package org.zerock.momofit.domain.mypage;

import java.util.Date;

import lombok.Data;

@Data
public class MyBoardDTO {
	
	private Integer board_no;
	private String title;
	private String text;
	private Integer board_like;
	private Integer hits;
	private Date board_date;
	private Integer img_check;
	private Integer user_no;
	private Integer categori_no;
	private Integer subject_no;

} // end class
