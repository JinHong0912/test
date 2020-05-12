package com.greenart.sample.repository.aticle;

import com.greenart.sample.model.BoardVO;

public interface ArticleDao {

//		public 출력 setBoard(입력)
		public BoardVO getBoardConfig(String boardCode);
		
}
