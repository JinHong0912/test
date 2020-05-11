package com.greenart.sample.controller.board;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/board")
public class BoardController {

	@RequestMapping("")
	public ModelAndView getBoardList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("template","board");
		mav.addObject("mypage","list");
		mav.setViewName("admin/admin");
		return mav;
	}

	@RequestMapping("/setBoardInc")
	public ModelAndView setBoardInc() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("template","board");
		mav.addObject("mypage","insert");
		mav.setViewName("admin/admin");
		return mav;
	}














}