package com.greenart.sample.repository.aticle;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greenart.sample.model.CommentVO;

@Repository
public class CommentDaoImpl implements CommentDao {

	
	@Autowired
	SqlSession sql;
	
	final static String namespace = "mappers.CommentMapper";

	
	@Override
	public int commentSet(CommentVO cvo) {
		return sql.insert(namespace + ".commentSet", cvo);
		
	}


	@Override
	public List<CommentVO> getCommentList(CommentVO cvo) {
		
		return sql.selectList(namespace + ".getCommentList", cvo);
	}


	@Override
	public int setCommentDelete(CommentVO cvo) {
		
		return sql.delete(namespace + ".setCommentDelete", cvo);
	}


	@Override
	public int setCommentUpdate(CommentVO cvo) {
		
		return sql.update(namespace + ".setCommentUpdate", cvo);
	}
	
}
