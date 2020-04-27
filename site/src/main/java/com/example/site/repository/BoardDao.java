package com.example.site.repository;

import java.util.List;

import com.example.site.model.BoardVO;

public interface BoardDao {
	//db 저장하는 역할 - Dao
	public int setArticle(BoardVO bvo);
	
	public List<BoardVO> getArtcleList();
}
