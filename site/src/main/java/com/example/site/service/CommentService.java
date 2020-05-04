package com.example.site.service;

import java.util.List;

import com.example.site.model.CommentVO;

public interface CommentService {
	
	public int setInsertComment(CommentVO cvo) throws Exception;
	
	public List<CommentVO> getCommentList(int bseq) throws Exception;
	
}