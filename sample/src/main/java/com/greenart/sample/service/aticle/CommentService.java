package com.greenart.sample.service.aticle;

import java.util.List;

import com.greenart.sample.model.CommentVO;


public interface CommentService {

	
	public int commentSet(CommentVO cvo);
	
	public List<CommentVO> getCommentList(CommentVO cvo);
	
	public int setCommentDelete(CommentVO cvo);
	
	public int setCommentUpdate(CommentVO cvo);

}
