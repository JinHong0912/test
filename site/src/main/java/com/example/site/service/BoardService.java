package com.example.site.service;

import java.util.List;

import com.example.site.model.BoardVO;
import com.example.site.model.UserVO;

public interface BoardService {


	//Controller <- 사이에서 데이터를 처리 -> Repository
	public int setArticle(BoardVO bvo);
	
	public List<BoardVO> getArtcleList(String searchOpt,String words);
	
	public BoardVO getArticlOne(int id);

	public void setHitUp(int id);

	public int deleteboard(int id);
	
	public int bupdate(BoardVO vo);
}
