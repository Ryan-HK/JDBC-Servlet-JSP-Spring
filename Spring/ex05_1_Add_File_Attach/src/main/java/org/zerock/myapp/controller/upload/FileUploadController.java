package org.zerock.myapp.controller.upload;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor

@Controller
public class FileUploadController {
	
	@PostMapping("/uploadFile")
	public void uploadFile(MultipartFile[] uploadFile, Model model) {
		log.trace("uploadFile() invoked.");
		
		
		
	} // uploadFile
	
} // end class
