package org.zerock.momofit.domain.mypage;

import java.util.Date;

import lombok.Value;

@Value
public class MyGroupVO {

	// 내가 참여한 Groups 테이블
	private Integer group_no;
	private String group_name;
	
	private String sports;
	private String group_loc;
	
	private Integer member_max;
	private Date schedule;
	private Date group_date;
	private Date edit;
	
	private String info;
	private Integer group_like;
	
	private String hashtag1;
	private String hashtag2;
	private String hashtag3;
	
	private Integer user_no;		// 내가 참여한 그룹의 모임장번호
	private String gender;
	
	
	private String group_img;		// 원본파일명
	private String temp;			// 임시파일명
	private String path;			// 파일경로
	
	private Integer member_count;	// 참여한 맴버 수
	
	// 내가 참여한 Group에 대한 Group_member index
	private Integer group_member_no;
	
} // end class
