package com.greenart.sample.service.aticle;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenart.sample.model.ArticleVO;
import com.greenart.sample.model.BoardVO;
import com.greenart.sample.repository.aticle.ArticleDao;

@Service
public class ArticleServiceImpl implements ArticleService {

	
	@Autowired
	ArticleDao articleDao;

	@Override
	public BoardVO getBoardConfig(String boardCode) {

		return articleDao.getBoardConfig(boardCode);
	}

	@Override
	public void setArticle(ArticleVO avo) {
		articleDao.setArticle(avo);
		
	}

	@Override
	public List<ArticleVO> getArticleList(String boardCode) {
		
		return articleDao.getArticleList(boardCode);
	}
	
	

}
