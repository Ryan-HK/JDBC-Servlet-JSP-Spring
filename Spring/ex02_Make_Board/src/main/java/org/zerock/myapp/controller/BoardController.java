package org.zerock.myapp.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.myapp.domain.BoardDTO;
import org.zerock.myapp.domain.BoardVO;
import org.zerock.myapp.domain.Criteria;
import org.zerock.myapp.domain.PageDTO;
import org.zerock.myapp.exception.ControllerException;
import org.zerock.myapp.service.BoardService;

import lombok.extern.log4j.Log4j2;

@Log4j2

@RequestMapping("/board")
@Controller
public class BoardController {
	
	
	//-- 생성자를 이용한 BoardService 주입 
	private final BoardService service;
	
	@Autowired
	public BoardController(BoardService service) {
		log.trace("Constructor({}) invoked.", service);
		
		this.service = service;
	} // Constructor
	
	//어노테이션 사용 시, 아래와 같이 작성 가능하다.
	/*
	 * @AllArgsConstuctor 선언하기
	 *
	 * 필드에 주입받고자 하는 객체를 1개만 적으면, Spring 4.3부터는 자동으로 
	 * 의존성을 주입해준다. (별도의 @Autowired 어노테이션 사용 X )
	 * private final BoardService service 
	 * 
	 */
	
	
	//---------------------------------
	//-- 1. 전체 게시물을 조회
	//---------------------------------
//	@GetMapping("/list")
	public void list(Model model) throws ControllerException {
		log.trace("list() invoked.");
		
		try {
			List<BoardVO> list = new ArrayList<>();
			
			list = service.getList();
			list.forEach(log::info);
			
			
			model.addAttribute("board", list);
			
		} catch (Exception e) {
			throw new ControllerException(e);
		} // try-catch	
		
	} // list
	
	//---------------------------------
	//-- 2. 게시물을 등록
	//---------------------------------
	@PostMapping("/register")
	public String register(BoardDTO dto, RedirectAttributes rttrs) throws ControllerException {
		log.trace("register() invoked.");
		
		try {
			
			boolean isRegister = this.service.register(dto);
			log.info("\t+ isRegister", isRegister);
			
			rttrs.addAttribute("result", isRegister ? "SUCCESS(" + dto.getBno() + ")" : "FAILURE");
			
			return "redirect:/board/list";
			
		} catch (Exception e) {
			throw new ControllerException(e);
		}
		
	} // register
	
	
	//---------------------------------
	//-- 3. 게시물을 수정
	//---------------------------------
	@PostMapping("/modify")
	public String modify(BoardDTO dto, RedirectAttributes rttrs)
		throws ControllerException {
		log.trace("modify() invoked.");
		
		try {
			boolean isModify = service.modify(dto);
			
			rttrs.addFlashAttribute("result", isModify ? "SUCCESS(" + dto.getBno() + ")" : "FAILURE");
			
			return "redirect:/board/list";
			
		} catch (Exception e) {
			throw new ControllerException(e);
		} // try-catch
		
	} // modify
	
	
	//---------------------------------
	//-- 4. 게시물을 삭제
	//---------------------------------
	@PostMapping("/remove")
	public String remove(BoardDTO dto, RedirectAttributes rttrs)
		throws ControllerException {
		log.trace("remove() invoked.");
		
		try {
			boolean isRemove = service.remove(dto);
			
			rttrs.addAttribute("result", isRemove ? "SUCCESS(" + dto.getBno() + ")" : "FAILURE");
			
			return "redirect:/board/list";
			
		} catch (Exception e) {
			throw new ControllerException(e);
		} // try-catch
		
	} // remove
	
	
	//---------------------------------
	//-- 5. 게시물 1개를 상세조회
	//---------------------------------
	@GetMapping("/get")
	public void get(BoardDTO dto, Model model) throws ControllerException {
		log.trace("get() invoked.");
		
		try {
			BoardVO vo = service.get(dto);
			log.info("\t+ vo : {}", vo);	
			
			model.addAttribute("vo", vo);
			
		} catch (Exception e) {
			throw new ControllerException(e);
		} // try-catch
		
	} // get
	
	
	//---------------------------------
	//-- 6. 게시물 등록화면으로 이동
	//---------------------------------
	
	@GetMapping("/register")
	public void register() {
		
	} // register
	
	
	//---------------------------------
	//-- 7. 게시물 상제화면, 수정호면으로 이동
	//---------------------------------
	@GetMapping({"/get", "/modify"})
	public void getAndModify() {
		
	} // getAndModify
	
	
	
	//---------------------------------
	//-- 8. 전체게시물 조회 (페이징 처리)
	//---------------------------------
	@GetMapping("/list")
	public void listPerPage(Criteria cri, Model model) throws ControllerException {
		log.trace("listPerPage({}) invoked.", cri);
		
		try {
			
			List<BoardVO> list = service.getListPerPage(cri);
			
			PageDTO pageDTO = new PageDTO(cri, this.service.getTotal());
			
			model.addAttribute("board", list);
			model.addAttribute("pageMaker", pageDTO);
			
		} catch (Exception e) {
			throw new ControllerException(e);
		}
		
	} // listPerPage
	

} // end class
