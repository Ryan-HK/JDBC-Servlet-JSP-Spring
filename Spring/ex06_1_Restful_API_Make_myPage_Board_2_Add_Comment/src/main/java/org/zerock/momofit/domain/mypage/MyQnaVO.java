package org.zerock.momofit.domain.mypage;

import java.util.Date;

import lombok.Value;

@Value
public class MyQnaVO {
	
	private Integer qna_no;
	private String title;
	private String text;
	private Date qna_date;
	private Date edit;
	private Integer img_check;
	private Integer qna_result;
	private Integer user_no;
	
} // end class
