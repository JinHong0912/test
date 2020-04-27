package com.example.site.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.site.model.BoardVO;
import com.example.site.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	
	@Autowired
	BoardService boardService;
	
	@RequestMapping("/list")
	public ModelAndView viewList() {
	List<BoardVO> vList = boardService.getArtcleList();
	ModelAndView mav = new ModelAndView();
	mav.addObject("vList", vList);
	mav.setViewName("/board/list");
	
	
	return mav;
	
		
	}
	
	
	@RequestMapping("/add")
	public String viewAdd() {
		return "/board/add";
	}

	@RequestMapping("/doAdd")
	@ResponseBody
	public String doAdd(@ModelAttribute BoardVO bvo) {
		int result = boardService.setArticle(bvo);	
		
		StringBuilder sb = null;
		String msg = "게시물이 등록 되었습니다.";
		
		
		if( result > 0) {
			sb = new StringBuilder();
			sb.append("<script>");
			sb.append("alert('"+ msg + "');");
			sb.append("location.replace('/board/list');");
			sb.append("</script>");
			
			
		}
		return sb.toString();
	}













}
