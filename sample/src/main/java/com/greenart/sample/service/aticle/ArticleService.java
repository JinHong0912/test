package com.greenart.sample.service.aticle;

import java.util.List;

import com.greenart.sample.model.ArticleVO;
import com.greenart.sample.model.BoardVO;

public interface ArticleService {

	
	public BoardVO getBoardConfig(String boardCode);
	
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

	public void hitUp(String boardCode, int aid);
	
	//게시물 수정 부분
	public int setArticleUpdate(ArticleVO avo);
	
}
