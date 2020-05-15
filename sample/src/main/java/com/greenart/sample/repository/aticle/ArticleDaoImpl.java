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
		session.insert(NAMESPACE + ".setArticle", avo);
		
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
	
	//게시물 삭제
	@Override
	public int setArticleDelete(String boardCode, int aid) {
		
		Map<String, Object> map = new HashMap<>();
		map.put("boardCode", boardCode);
		map.put("aid", aid);
		return session.delete(NAMESPACE+".setArticleDelete", map);
	}

	@Override
	public int setArticleDeleteAll(String boardCode, int aid) {
		
		Map<String, Object> map = new HashMap<>();
		map.put("boardCode", boardCode);
		map.put("aid", aid);
		return session.delete(NAMESPACE+".setArticleDeleteAll", map);
	}

	@Override
	public ArticleVO getArticleReplyInfo(ArticleVO avo) {
		
		return session.selectOne(NAMESPACE + ".getArticleReplyInfo", avo);
	}

	@Override
	public int setArticleRef(ArticleVO avo) {
		
		return session.update(NAMESPACE + ".setArticleRef", avo);
	}

	@Override
	public int setArticleReply(ArticleVO avo) {
		
		return session.insert(NAMESPACE + ".setArticleReply", avo);
	}

	@Override
	public void hitUp(String boardCode, int aid) {
		
		Map<String, Object> map = new HashMap<>();
		map.put("boardCode", boardCode);
		map.put("aid", aid);
		session.delete(NAMESPACE+".hitUp", map);
		
	}

	@Override
	public int setArticleUpdate(ArticleVO avo) {
		
		return session.update(NAMESPACE+".setArticleUpdate", avo);
	}


	
	
}
