package com.greenart.sample.service.aticle;

import java.util.List;

import com.greenart.sample.model.ArticleVO;
import com.greenart.sample.model.BoardVO;

public interface ArticleService {

	
	public BoardVO getBoardConfig(String boardCode);
	
	public void setArticle(ArticleVO avo);
	
	public List<ArticleVO> getArticleList(String boardCode);
}
