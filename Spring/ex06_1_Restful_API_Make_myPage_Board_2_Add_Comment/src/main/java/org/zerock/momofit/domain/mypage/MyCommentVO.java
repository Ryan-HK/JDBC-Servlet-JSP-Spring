package org.zerock.momofit.domain.mypage;

import java.util.Date;

import lombok.Value;

@Value
public class MyCommentVO {

	private Integer comm_no;		// 댓글번호(PK)
	private Integer board_no;		// 게시글번호 (FK)
	private String text;
	private Date comm_date;
	private Date edit;
	private Integer parent_no;
	private Integer user_no;		// 유저번호 - 댓글 쓴 이(FK)

	// Board Table Join
	private String title;			// 게시글내용
	
	// Category Table Join
	private String category_name;
	
} // end class
