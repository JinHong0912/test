package com.greenart.sample.repository.aticle;

import java.util.List;

import com.greenart.sample.model.ArticleVO;
import com.greenart.sample.model.BoardVO;

public interface ArticleDao {

//		public 출력 setBoard(입력)
		public BoardVO getBoardConfig(String boardCode);
		
//		public 출력 setArticle(ArticleVO avo);
		public void setArticle(ArticleVO avo);
		
		public List<ArticleVO> getArticleList(String boardCode);
}
