package com.greenart.sample.service.board;

import java.util.List;

import com.greenart.sample.model.BoardVO;

public interface BoardService {

	
	
	public int setBoard(BoardVO bvo);
	
	public int createTblArticle(String boardCode);
	
	public int createTblComment(String boardCode);
	
	public List<BoardVO> getBoardList();

}
