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
		List<ArticleVO> avo = articleService.getArticleList(boardCode);//작성되 게시판이 몇 줄이 있는지 확인하는 줄
		int cnt = articleService.getArticleCount(boardCode);//작성된 게시판 정렬
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("boardConfig", bvo);//게시판 색이 변경 되는지
		mav.addObject("boardCode", boardCode);
		mav.addObject("articleList", avo);
		mav.addObject("cnt", cnt);//작성된 게시판 정렬
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
//	작성 게시물 상세 보기
	@RequestMapping("/getArticleView")
	public ModelAndView getArticleView(@RequestParam String boardCode, @RequestParam int aid) {
		ArticleVO avo = articleService.getArticleView(boardCode, aid);
		
		BoardVO bvo = articleService.getBoardConfig(boardCode);
		ModelAndView mav = new ModelAndView();	
		mav.addObject("boardConfig", bvo);
		mav.addObject("boardCode", boardCode);
		mav.addObject("articleView", avo);
		mav.setViewName("/article/getArticleView");

		return mav;
		
	}
	
	
	
	
	
}
