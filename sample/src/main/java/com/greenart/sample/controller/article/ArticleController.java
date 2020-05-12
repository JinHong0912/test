package com.greenart.sample.controller.article;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.greenart.sample.model.BoardVO;
import com.greenart.sample.service.aticle.ArticleService;

@Controller
@RequestMapping("/article")
public class ArticleController {

	@Autowired
	ArticleService articleService;
	
	
	@RequestMapping("")
	public ModelAndView getArticleList(@RequestParam String boardCode) {
		BoardVO bvo = articleService.getBoardConfig(boardCode);

		ModelAndView mav = new ModelAndView();
		mav.addObject("boardConfig", bvo);
		mav.addObject("boardCode", boardCode);
		mav.setViewName("/article/getArticleList");
		return mav;
	}
	
	
	@RequestMapping("/setArticle")
	public String setArticle(@RequestParam String boardCode) {
		return "article/setArticle";
	
		
		
	}
}
