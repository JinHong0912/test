package com.example.site.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.site.model.CommentVO;

@Repository
public class CommentDaoImpl implements CommentDao {

	@Autowired SqlSession session;

	private final static String namespace = "mappers.CommentMapper";

	@Override
	public int setInsertComment(CommentVO cvo) throws Exception {

		return session.insert(namespace + ".insertComment", cvo);
	}

	@Override
	public List<CommentVO> getCommentList(int bseq) throws Exception {

		return session.selectList(namespace + ".commentList", bseq);
	}


}