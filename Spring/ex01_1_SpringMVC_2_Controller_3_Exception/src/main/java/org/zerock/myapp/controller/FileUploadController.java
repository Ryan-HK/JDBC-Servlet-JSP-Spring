package org.zerock.myapp.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@RequestMapping("/fileupload/")
@Controller
public class FileUploadController {
	
	@GetMapping("page")
	public void fileUploadPage() {
		log.trace("fileUploadPage() invoked.");
		
		// void리턴타입으로 view는 /fileupload/page로 이동된다.
	} // fileUploadPage
	
	@PostMapping("/doit")
	public void DoFileUpload(String myName, String myAge,
			@RequestParam("files") List<MultipartFile> files
	) {
		log.trace("DoFileUpload({}, {}, files) invoked.", myName, myAge);
		
		String targetDir = "C:/Temp/upload/";
		
		for(MultipartFile file : files) {
			log.info("name : {}", file.getOriginalFilename());
			log.info("size : {}", file.getSize());
			
			// 파일이 저장되는 위치
			String targetFile = targetDir + file.getOriginalFilename();
			
			try {
				file.transferTo(new File(targetFile));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			} // try-catch
			
			
		} // enhanced for
		
	} // DoFileUpload
	
} // end class
