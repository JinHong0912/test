package com.example.site.repository;

import java.util.List;

import com.example.site.model.BoardVO;
import com.example.site.model.UserVO;

public interface BoardDao {
	//db 저장하는 역할 - Dao
	public int setArticle(BoardVO bvo);
	
	public List<BoardVO> getArtcleList(String searchOpt,String words);

	public BoardVO getArticlOne(int id);

	public void setHitUp(int id);
	
	public int deleteboard(int id);

	public int bupdate(BoardVO vo);
	
}
