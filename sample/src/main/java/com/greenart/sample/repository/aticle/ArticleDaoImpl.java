package com.greenart.sample.repository.aticle;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greenart.sample.model.ArticleVO;
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

	@Override
	public void setArticle(ArticleVO avo) {
		session.selectOne(NAMESPACE + ".setArticle", avo);
		
	}

	@Override
	public List<ArticleVO> getArticleList(String boardCode) {
		
		return session.selectList(NAMESPACE + ".getArticleList", boardCode);
	}

	@Override
	public int getArticleCount(String boardCode) {
		
		return session.selectOne(NAMESPACE + ".getArticleCount", boardCode);
	}

	@Override
	public ArticleVO getArticleView(String boardCode, int aid) {
		
		Map<String, Object> map = new HashMap<>();
		map.put("boardCode", boardCode);
		map.put("aid", aid);
		return session.selectOne(NAMESPACE + ".getArticleView", map);
	}


	
	
}
