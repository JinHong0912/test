package com.greenart.sample.controller.article;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.greenart.sample.model.ArticleVO;
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
		List<ArticleVO> avo = articleService.getArticleList(boardCode);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("boardConfig", bvo);
		mav.addObject("boardCode", boardCode);
		mav.addObject("articleList", avo);
		mav.setViewName("/article/getArticleList");
		
		return mav;
	}
	
	
	@RequestMapping("/setArticle")
	public ModelAndView getArticle(@RequestParam String boardCode) {
		BoardVO bvo = articleService.getBoardConfig(boardCode);
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("boardConfig", bvo);
		mav.addObject("boardCode", boardCode);
		mav.setViewName("/article/setArticle");

		return mav;
		
	}
	
	
	@RequestMapping(value ="/setArticle", method = RequestMethod.POST)
	@ResponseBody
	public String setArticle(@ModelAttribute ArticleVO avo, @RequestPart MultipartFile files) {
		articleService.setArticle(avo);
		
		StringBuilder sb = new StringBuilder();
		String msg ="입력하신 게시물이 저장되었습니다.";
		
			sb.append("<script>");//<script>
			sb.append("alert('" + msg + "');");//alert('');
			sb.append("location.replace('/article?boardCode="+avo.getBoardCode()+"')");
			sb.append("</script>");//</script>
		
		return sb.toString();
		
	
	}
	
	
	
	
	
	
	
	
}
