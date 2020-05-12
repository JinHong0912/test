package com.greenart.sample.controller.board;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.greenart.sample.model.BoardVO;
import com.greenart.sample.service.board.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	
	
	@Autowired
	BoardService boardService;
	
	
	@RequestMapping("")
	public ModelAndView getBoardList(@RequestParam(defaultValue = "boardName") String searchOpt,
									 @RequestParam(defaultValue = "") String words) {
		List<BoardVO> bvo = boardService.getBoardList(searchOpt, words);
		int boardCount = boardService.getBoardCount(searchOpt, words);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template","board");
		mav.addObject("mypage","list");
		mav.addObject("boardList", bvo);
		// 생략해도 되는 내용
		mav.addObject("searchOpt", searchOpt);
		mav.addObject("words", words);
		
		mav.addObject("boardCount", boardCount);
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
	
	@RequestMapping("/setBoardDelete")
	@ResponseBody
	public String setBoardDelere(@RequestParam String boardCode) {
		int result = boardService.setBoardDelete(boardCode);
		
		StringBuilder sb = null;
		String msg = null;
		if( result > 0) {
			boardService.dropTblArticle(boardCode);
			boardService.dropTblComment(boardCode);
			
			sb = new StringBuilder();
			msg = "선택 하신 게시판이 삭제 되었습니다.";
			sb.append("<script>");//<script>
			sb.append("alert('" + msg + "');");//alert('');
			sb.append("location.replace('/board');");//location.replace(\"/board\");");
			sb.append("</script>");//</script>
		
		}else {
			msg = "게시판이 삭제 되지 않았습니다 관리자에게 문의하세요.";
			sb.append("<script>");//<script>
			sb.append("alert('" + msg + "');");//alert('');
			sb.append("location.replace('/board');");//location.replace(\"/board\");");
			sb.append("</script>");//</script>
			
		}
		
		return sb.toString();
	}
	
	@RequestMapping("/getBoardCodeCheck")
	@ResponseBody
	public String getBoardCodeCheck(@RequestParam String boardCode) {
		int result = boardService.getBoardCode(boardCode);
		
		String str = null;
		if( result > 0) {
			str = "NO";
		}else {
			str= "YES";
		}
		return str.toString();
	
	}
	
	}