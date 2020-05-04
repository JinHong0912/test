package com.example.site.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.site.model.CommentVO;
import com.example.site.service.CommentService;

@Controller
@RequestMapping("/comment")
public class CommentController {
	
	@Autowired CommentService commentService;
	
	@RequestMapping("/insert")
	@ResponseBody
	public int insertComment(@ModelAttribute CommentVO cvo) throws Exception {

		return commentService.setInsertComment(cvo);
	}

	@RequestMapping("/list")
	@ResponseBody
	public List<CommentVO> getCommentList(int bseq) throws Exception {

		return commentService.getCommentList(bseq);
	}

}