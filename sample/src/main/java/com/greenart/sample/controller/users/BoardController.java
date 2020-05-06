package com.greenart.sample.controller.users;


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
		mav.setViewName("admin/admin");
		return mav;
	}
}
