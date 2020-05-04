package com.example.site.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.site.model.BoardVO;
import com.example.site.model.UserVO;
import com.example.site.repository.BoardDao;

@Service
public class BoardServiceImpl implements BoardService  {

	@Autowired
	BoardDao boardDao;
	
	@Override
	public int setArticle(BoardVO bvo) {

		String subject = bvo.getSubject();
		String writer = bvo.getWriter();
		String content = bvo.getContent();

		writer = writer.replace(">", "&gt;");
		writer = writer.replace("<", "&lt;");
		writer = writer.replace(" ", "&nbsp");
		writer = writer.replace("\n", "<br/>");

		subject = subject.replace(">", "&gt;");
		subject = subject.replace("<", "&lt;");
		subject = subject.replace(" ", "&nbsp");
		subject = subject.replace("\n", "<br/>");

		content = content.replace(">", "&gt;");
		content = content.replace("<", "&lt;");
		content = content.replace(" ", "&nbsp");
		content = content.replace("\n", "<br/>");

		bvo.setContent(content);
		bvo.setWriter(writer);
		bvo.setSubject(subject);

		return boardDao.setArticle(bvo);
	}

	@Override
	public List<BoardVO> getArtcleList(String searchOpt,String words) {
		return boardDao.getArtcleList(searchOpt,words);
	}

	@Override
	public BoardVO getArticlOne(int id) { //dao에 있는 코드를 실행하는 기능
		return boardDao.getArticlOne(id);
	}

	@Override
	public void setHitUp(int id) {
		boardDao.setHitUp(id);
		
	}

	@Override
	public int deleteboard(int id) {
		return boardDao.deleteboard(id);
	}

	@Override
	public int bupdate(BoardVO vo) {
		return boardDao.bupdate(vo);
	}

}
