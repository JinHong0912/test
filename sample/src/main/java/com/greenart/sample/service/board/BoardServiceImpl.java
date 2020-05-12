package com.greenart.sample.service.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenart.sample.model.BoardVO;
import com.greenart.sample.repository.board.BoardDao;

@Service
public class BoardServiceImpl implements BoardService {

	
	@Autowired
	BoardDao boardDao;
	
	@Override
	public int setBoard(BoardVO bvo) {

		return boardDao.setBoard(bvo);
	}

	@Override
	public int createTblArticle(String boardCode) {
		
		return boardDao.createTblArticle(boardCode);
	}

	@Override
	public int createTblComment(String boardCode) {
		
		return boardDao.createTblComment(boardCode);
	}

	@Override
	public List<BoardVO> getBoardList(String searchOpt, String words) {
		
		return boardDao.getBoardList(searchOpt, words);
	}

	//게시판 목록 확인 
	@Override
	public int getBoardCount(String searchOpt, String words) {
		
		return boardDao.getBoardCount(searchOpt, words);
	}	
	
	
	@Override
	public int setBoardDelete(String boardCode) {
		
		return boardDao.setBoardDelete(boardCode);
	}

	@Override
	public int dropTblArticle(String boardCode) {
		
		return boardDao.dropTblArticle(boardCode);
	}

	@Override
	public int dropTblComment(String boardCode) {
		
		return boardDao.dropTblComment(boardCode);
	}

	@Override
	public int getBoardCode(String boardCode) {
	
		return boardDao.getBoardCode(boardCode);
	}

}
