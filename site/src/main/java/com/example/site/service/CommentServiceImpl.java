package com.example.site.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.site.model.CommentVO;
import com.example.site.repository.CommentDao;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired CommentDao dao;
	
	@Override
	public int setInsertComment(CommentVO cvo) throws Exception {

		return dao.setInsertComment(cvo);
	}

	@Override
	public List<CommentVO> getCommentList(int bseq) throws Exception {

		return dao.getCommentList(bseq);
	}

}