package com.greenart.sample.controller.article;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.greenart.sample.model.CommentVO;
import com.greenart.sample.service.aticle.CommentService;

@Controller
@RequestMapping("/comment")
public class CommentController {

	@Autowired
	CommentService commentService;

	@RequestMapping("/commentSet")
	@ResponseBody
	public int commentSet(@ModelAttribute CommentVO cvo) {
		
		return commentService.commentSet(cvo);
	}

	@RequestMapping("/getCommentList")
	@ResponseBody
	public List<CommentVO> getCommentList(@ModelAttribute CommentVO cvo) {
		
		return commentService.getCommentList(cvo);
		
	}
	@RequestMapping("/setCommentDelete")
	@ResponseBody
	public int setCommentDelete(@ModelAttribute CommentVO cvo) {	
			commentService.setCommentDelete(cvo);	
		return 1;
	}
	
	@RequestMapping("/setCommentUpdate")
	@ResponseBody
	public int setCommentUpdate(@ModelAttribute CommentVO cvo) {
		
		return commentService.setCommentUpdate(cvo);
	}

}
