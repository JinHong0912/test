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

	@Override
	public int getArticleCount(String boardCode) {
	
		return articleDao.getArticleCount(boardCode);
	}

	@Override
	public ArticleVO getArticleView(String boardCode, int aid) {
		
		return articleDao.getArticleView(boardCode, aid);
	}

	@Override
	public int setArticleDelete(String boardCode, int aid) {
		
		return articleDao.setArticleDelete(boardCode, aid);
	}

	@Override
	public int setArticleDeleteAll(String boardCode, int aid) {
		
		return articleDao.setArticleDeleteAll(boardCode, aid);
	}

	@Override
	public ArticleVO getArticleReplyInfo(ArticleVO avo) {
		
		return null;
	}

	@Override
	public int setArticleRef(ArticleVO avo) {
		
		return 0;
	}

	@Override
	public int setArticleReply(ArticleVO avo) {
		ArticleVO dto = articleDao.getArticleReplyInfo(avo);
		avo.setRef(dto.getRef());
		avo.setRe_step(dto.getRe_step());
		avo.setRe_level(dto.getRe_level());
		
		int result = 0;
		
		result += articleDao.setArticleRef(avo);
		result += articleDao.setArticleReply(avo);
			
		return result;	
	}

	@Override
	public void hitUp(String boardCode, int aid) {
		articleDao.hitUp(boardCode, aid);
	}

	@Override
	public int setArticleUpdate(ArticleVO avo) {
		
		return articleDao.setArticleUpdate(avo);
	}
	

}
