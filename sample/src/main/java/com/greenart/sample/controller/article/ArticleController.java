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
	public ModelAndView getArticleList(
			@RequestParam String boardCode,
			@RequestParam(defaultValue ="1") int num,
			@RequestParam(defaultValue = "subject") String searchOpt,
			@RequestParam(defaultValue = "") String words){
		
		int cnt = articleService.getArticleCount(searchOpt, words, boardCode);// 작성된 게시판 정렬
		
		int end = 10; // 한 페이지에 보여질 게시물 갯수
		int pageNum = (int)	Math.ceil((double) cnt / end); //페이지 번호 : (ceil)101 /10 - 페이지 11
		//10.1 -> 11.0 -> 11(페이지)
		
		int start = (num - 1) * end ; //0에서 부터 10개 자르기
		
		int pageNum_cnt = 10; //페이지 번호 개수를 10개씩 만 보여지게 한다.
		
		int endPageNum = (int)(Math.ceil((double) num / (double)pageNum_cnt)  * pageNum_cnt);
		
		int startPageNum = endPageNum - (pageNum_cnt - 1 );
		
		int lastPageNum = (int)(Math.ceil((double) cnt / (double)pageNum_cnt));
	
		if(endPageNum > lastPageNum) {
		   endPageNum = lastPageNum;
			
		}
		boolean prev = startPageNum == 1? false : true;
		boolean next = endPageNum * pageNum_cnt >= cnt ? false : true;
		
		BoardVO bvo = articleService.getBoardConfig(boardCode);
		List<ArticleVO> avo = articleService.getArticleList(start, end, searchOpt, words, boardCode);// 작성되 게시판이 몇 줄이 있는지 확인하는 줄

		ModelAndView mav = new ModelAndView();
		mav.addObject("boardConfig", bvo);// 게시판 색이 변경 되는지
		mav.addObject("boardCode", boardCode);
		mav.addObject("articleList", avo);
		mav.addObject("cnt", cnt);// 작성된 게시판 정렬
		mav.addObject("searchOpt", searchOpt);
		mav.addObject("words", words);
		mav.addObject("prev", prev);
		mav.addObject("next", next);
		mav.addObject("pageNum", pageNum);
		mav.addObject("startPageNum",startPageNum);
		mav.addObject("endPageNum", endPageNum);
		mav.addObject("select", num);
		
		mav.setViewName("/article/getArticleList");

		return mav;
	}

	@RequestMapping(value = "/setArticle", method = RequestMethod.GET)
	public ModelAndView getArticle(@RequestParam String boardCode) {
		BoardVO bvo = articleService.getBoardConfig(boardCode);
		ModelAndView mav = new ModelAndView();

		mav.addObject("boardConfig", bvo);
		mav.addObject("boardCode", boardCode);
		mav.setViewName("/article/setArticle");

		return mav;

	}

	@RequestMapping(value = "/setArticle", method = RequestMethod.POST)
	@ResponseBody
	public String setArticle(@ModelAttribute ArticleVO avo, @RequestPart MultipartFile files) {
		articleService.setArticle(avo);

		StringBuilder sb = new StringBuilder();
		String msg = "입력하신 게시물이 저장되었습니다.";

		sb.append("<script>");// <script>
		sb.append("alert('" + msg + "tst : " + avo.getRef() + "');");// alert('');
		sb.append("location.replace('/article?boardCode=" + avo.getBoardCode() + "')");
		sb.append("</script>");// </script>

		return sb.toString();

	}

//	hitup -> 작성 게시물 상세 보기 
	@RequestMapping("/getArticleView")
	public ModelAndView getArticleView(@RequestParam String boardCode, @RequestParam int aid) {
		// 작성게시물 상세 보기 전에 카운팅 해주는 것
		articleService.hitUp(boardCode, aid);

		ArticleVO avo = articleService.getArticleView(boardCode, aid);
		BoardVO bvo = articleService.getBoardConfig(boardCode);

		ModelAndView mav = new ModelAndView();
		mav.addObject("boardConfig", bvo);
		mav.addObject("boardCode", boardCode);
		mav.addObject("articleView", avo);
		mav.setViewName("/article/getArticleView");

		return mav;

	}

	// 게시판 목록 삭제
	@RequestMapping("/setArticleDelete")
	@ResponseBody
	public String setArticleDelete(@RequestParam String boardCode, int aid) {

		int result = articleService.setArticleDelete(boardCode, aid);

		StringBuilder sb = null;
//		StringBuilder sb = new StringBuilder();
		if (result > 0) {
			String msg = "선택하신 게시물이 삭제 되었습니다.";
			sb = new StringBuilder();
			sb.append("<script>");// <script>
			sb.append("alert('" + msg + "');");// alert('');
			sb.append("location.replace('/article?boardCode=" + boardCode + "')");
			sb.append("</script>");// </script>

		}
		return sb.toString();

	}

//	전체 선택 삭제 부분
	@RequestMapping("/setArticleDeleteAll")
	@ResponseBody
	public String setArticleDeleteAll(@RequestParam String boardCode,
			@RequestParam(value = "chkArr[]") List<String> chkArr) {
//		String msg = null;

		int num = 0;
		for (String list : chkArr) { // list[0]="10" list[1]="11" list[2]=""12
			num = Integer.parseInt(list);
			articleService.setArticleDeleteAll(boardCode, num);
		}

		return "success";
	}

	@RequestMapping("/getArticleReply")
	public ModelAndView getArticleReply(@RequestParam String boardCode, @RequestParam int aid) {

		BoardVO bvo = articleService.getBoardConfig(boardCode);
		ArticleVO avo = articleService.getArticleView(boardCode, aid);
		ModelAndView mav = new ModelAndView();
		mav.addObject("boardConfig", bvo);
		mav.addObject("boardCode", boardCode);
		mav.addObject("aid", aid);
		mav.addObject("articleView", avo);
		mav.setViewName("/article/getArticleReply");

		return mav;

	}

	@RequestMapping("/setArticleReply")
	@ResponseBody
	public String setArticleReply(@ModelAttribute ArticleVO avo) {
		int result = articleService.setArticleReply(avo);

		StringBuilder sb = new StringBuilder();
		String msg = null;

		if (result > 0) {
			sb = new StringBuilder();
			msg = "선택하신 게시물에 답변이 저장 되었습니다.";
			sb.append("<script>");// <script>
			sb.append("alert('" + msg + "');");// alert('');
			sb.append("location.replace('/article?boardCode=" + avo.getBoardCode() + "')");
			sb.append("</script>");// </script>

			return sb.toString();

		} else {

			sb = new StringBuilder();
			msg = "시스쳄 오류입니다. 관리자에게 문의하세요.";
			sb.append("<script>");// <script>
			sb.append("alert('" + msg + "');");// alert('');
			sb.append("location.replace('/article?boardCode=" + avo.getBoardCode() + "')");
			sb.append("</script>");// </script>

			return sb.toString();
		}

	}
	// 게시물 수정 부분
		@RequestMapping(value ="/setArticleModify" , method = RequestMethod.GET)
		public ModelAndView getArticleUpdate(@ModelAttribute ArticleVO avo) {
			ArticleVO rvo = articleService.getArticleView(avo.getBoardCode(),avo.getAid());
			BoardVO bvo = articleService.getBoardConfig(avo.getBoardCode());

			ModelAndView mav = new ModelAndView();
			mav.addObject("boardConfig", bvo);
			mav.addObject("boardCode", avo.getBoardCode());
			mav.addObject("articleView", rvo);
			mav.setViewName("/article/setArticleModify");

			return mav;
			
		}
	
	// 게시물 수정 부분
	@RequestMapping(value ="/setArticleModify" , method = RequestMethod.POST)
	@ResponseBody
	public String getArtcleUpdate(@ModelAttribute ArticleVO avo) {
		int result = articleService.setArticleUpdate(avo);
		
		StringBuilder sb = new StringBuilder();//메모리
		String msg = null;

		if (result > 0) {
			msg = "선택하신 게시물이 수정 되었습니다.";
			sb.append("<script>");// <script>
			sb.append("alert('" + msg + "');");// alert('');
			sb.append("location.replace('/article/getArticleView?boardCode="+avo.getBoardCode()+"&aid="+avo.getAid()+"')");
			sb.append("</script>");// </script>

		}
		
		return sb.toString();
	}

	
}

