package com.greenart.sample.service.board;

import java.util.List;

import com.greenart.sample.model.BoardVO;

public interface BoardService {

	
	
	public int setBoard(BoardVO bvo);
	
	public int createTblArticle(String boardCode);
	
	public int createTblComment(String boardCode);
	
	public List<BoardVO> getBoardList(String searchOpt, String words);
	
	//게시판 목록 확인 
	public int getBoardCount(String searchOpt, String words);

	//5월 12일 수업
	//게시판 삭제 및 자동생성 게시판 삭제
	public int setBoardDelete (String boardCode); //삭제시에는 void 사용 가능
	
	public int dropTblArticle(String boardCode);

	public int dropTblComment(String boardCode);
	
	public int getBoardCode(String boardCode);


	
}
