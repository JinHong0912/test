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

		public int getArticleCount(String boardCode);

		public ArticleVO getArticleView(String boardCode, int aid);
	
		//게시물 삭제
		public int setArticleDelete(String boardCode, int aid);
		
		
		public int setArticleDeleteAll(String boardCode, int aid);
		
		//답글 삭제
		public ArticleVO getArticleReplyInfo(ArticleVO avo);
		
		public int setArticleRef(ArticleVO avo);
		
		public int setArticleReply(ArticleVO avo);
		
		
}
