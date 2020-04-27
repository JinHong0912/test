package com.example.site.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.site.model.BoardVO;
import com.example.site.repository.BoardDao;

@Service
public class BoardServiceImpl implements BoardService  {

	@Autowired
	BoardDao boardDao;
	
	@Override
	public int setArticle(BoardVO bvo) {
		return boardDao.setArticle(bvo);
	}

	@Override
	public List<BoardVO> getArtcleList() {
		return boardDao.getArtcleList();
	}

}
