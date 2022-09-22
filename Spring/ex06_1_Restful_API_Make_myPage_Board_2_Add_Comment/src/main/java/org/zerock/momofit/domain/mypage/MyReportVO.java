package org.zerock.momofit.domain.mypage;

import java.util.Date;

import lombok.Value;

@Value
public class MyReportVO {
	
	private Integer report_no;
	private String title;
	private String text;
	private Date report_date;
	private Date edit;
	private Integer img_check;
	private Integer report_result;
	private Integer user_no;

} // end class
