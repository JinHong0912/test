package com.greenart.sample.repository.aticle;

import java.util.List;

import com.greenart.sample.model.CommentVO;

public interface CommentDao {
	

	public int commentSet(CommentVO cvo);
		
	public List<CommentVO> getCommentList(CommentVO cvo);
	
	public int setCommentDelete(CommentVO cvo);
	
	public int setCommentUpdate(CommentVO cvo);
	
}
