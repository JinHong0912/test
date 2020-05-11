package com.greenart.sample.controller.board;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.greenart.sample.model.BoardVO;
import com.greenart.sample.service.board.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	
	
	@Autowired
	BoardService boardService;
	
	
	@RequestMapping("")
	public ModelAndView getBoardList() {
		List<BoardVO> bvo = boardService.getBoardList();
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template","board");
		mav.addObject("mypage","list");
		mav.addObject("boardList", bvo);
		mav.setViewName("admin/admin");
		return mav;
	}

	@RequestMapping(value = "/setBoard", method = RequestMethod.GET)
	public ModelAndView setBoardInc() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("template","board");
		mav.addObject("mypage","insert");
		mav.setViewName("admin/admin");
		return mav;
	}

	@RequestMapping(value = "/setBoard", method = RequestMethod.POST)
	public String setBoardWrite(@ModelAttribute BoardVO bvo) {
		int result = boardService.setBoard(bvo);
		String url = null;
		
		if( result > 0) {
			
			boardService.createTblArticle(bvo.getBoardCode());
			boardService.createTblComment(bvo.getBoardCode());
			url = "redirect:/board";
			
		}else {
			url = "redirect:/board";
			
		}

		
		return url;
		
	}
}