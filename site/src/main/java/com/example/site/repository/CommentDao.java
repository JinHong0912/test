package com.example.site.repository;

import java.util.List;

import com.example.site.model.CommentVO;

public interface CommentDao {
	
	public int setInsertComment(CommentVO cvo) throws Exception;
	
	public List<CommentVO> getCommentList(int bseq) throws Exception;
}
