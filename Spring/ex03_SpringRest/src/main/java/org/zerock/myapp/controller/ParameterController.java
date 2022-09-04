package org.zerock.myapp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor


@RequestMapping("/RESTful/")
@RestController
public class ParameterController {

	//-- 1. @PathVariable을 이용한 URL상 일부 경로를 파라미터로 지정
	@GetMapping("/product/{cat}/{pid}")
	public String[] getPath(
			@PathVariable("cat") String cat,
			@PathVariable("pid") Integer pid
			) {
		
		return new String[] {"category: " + cat, "productid: " + pid};
		
	} // getPath
	
	
	
	//-- 2. @RequestBody : 전달 된 요청의 내용을 이용하여, 타입변환을 한다.
	//-- PostMapping으로 전달되어 오는 내용(Body)을 읽어, JSON 형태의 데이터를 읽어, 
	//-- 원하는 타입으로 타입변환한다.

	
	
} // end class
