package org.zerock.myapp.controller;


import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.myapp.domain.SampleVO;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;


@Log4j2
@NoArgsConstructor


@RequestMapping("/RESTful/")
@RestController
public class SampleController {

	//-- 1. 단순 문자열 반환
	@GetMapping(path = "/getText", produces = "text/plain; charset=UTF-8")
	public String getText() {
		log.trace("getText() invoked.");
		
		log.info("MIME TYPE : {}", MediaType.TEXT_PLAIN_VALUE);
		
		return "안녕하세요";
	} // getText
	
	
	//------------
	
	
	//-- 2. 객체반환
	@GetMapping(
			path = "/getSample",
			produces = {MediaType.APPLICATION_JSON_VALUE}
			)
	public SampleVO getSample() {
		
		return new SampleVO(1, "Ryan", "Jung");
	} // getSample
	
	
	//-- 3. 객체반환 (컬렉션 타입으로 반환)
	@GetMapping(value = "/getList")
	public List<SampleVO> getList() {
		
		return IntStream
				.range(1, 10)
				.mapToObj(i -> new SampleVO(i, i + "Hello", i + "World"))
				.collect(Collectors.toList());
		
	} // getList
	
	
	//-- 4. ResponseEntity 타입
	@GetMapping(path = "/check",  params = {"height", "weight"})
	public ResponseEntity<SampleVO> check(Double height, Double weight){
		
		SampleVO vo = new SampleVO(0, "" + height, "" + weight);
		
		ResponseEntity<SampleVO> result = null;
		
		if(height < 150) {
			return ResponseEntity.status(HttpStatus.BAD_GATEWAY).body(vo);
		} else {
			return ResponseEntity.status(HttpStatus.OK).body(vo);
		}

	} // check
	
	
} // end class
