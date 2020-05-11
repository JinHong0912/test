package com.greenart.sample.repository.board;

import java.util.List;

import com.greenart.sample.model.BoardVO;

public interface BoardDao {

//		public 출력 setBoard(입력)
		public int setBoard(BoardVO bvo);
		
		public int createTblArticle(String boardCode);
		
		public int createTblComment(String boardCode);

		public List<BoardVO> getBoardList();
}
