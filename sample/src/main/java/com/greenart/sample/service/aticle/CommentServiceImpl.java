package com.greenart.sample.service.aticle;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenart.sample.model.CommentVO;
import com.greenart.sample.repository.aticle.CommentDao;

@Service
public class CommentServiceImpl implements CommentService{

	@Autowired
	CommentDao commentDao;
	
	@Override
	public int commentSet(CommentVO cvo) {
		
		return commentDao.commentSet(cvo);
	}

	@Override
	public List<CommentVO> getCommentList(CommentVO cvo) {
		
		return commentDao.getCommentList(cvo);
	}

	@Override
	public int setCommentDelete(CommentVO cvo) {
		
		return commentDao.setCommentDelete(cvo);
	}

	@Override
	public int setCommentUpdate(CommentVO cvo) {
		
		return commentDao.setCommentUpdate(cvo);
	}

}
