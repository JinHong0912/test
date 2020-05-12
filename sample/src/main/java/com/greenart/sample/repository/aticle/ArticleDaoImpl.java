package com.greenart.sample.repository.aticle;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greenart.sample.model.BoardVO;

@Repository
public class ArticleDaoImpl implements ArticleDao{

	@Autowired
	SqlSession session;
	
	final static String NAMESPACE = "mappers.ArticleMapper";

	@Override
	public BoardVO getBoardConfig(String boardCode) {
		return session.selectOne(NAMESPACE + ".getBoardConfig", boardCode);
	}
	
	
}
