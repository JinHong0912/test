package com.example.site.service;

import java.util.List;

import com.example.site.model.BoardVO;

public interface BoardService {


	//Controller <- 사이에서 데이터를 처리 -> Repository
	public int setArticle(BoardVO bvo);
	
	public List<BoardVO> getArtcleList();

}
