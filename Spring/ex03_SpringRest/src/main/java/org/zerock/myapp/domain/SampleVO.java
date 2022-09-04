package org.zerock.myapp.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@AllArgsConstructor

@Data
public class SampleVO {

	private Integer mno;
	private String firstName;
	private String lastName;
	
} // end class
