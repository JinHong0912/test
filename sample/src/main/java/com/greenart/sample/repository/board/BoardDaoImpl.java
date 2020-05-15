package com.greenart.sample.repository.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greenart.sample.model.BoardVO;

@Repository
public class BoardDaoImpl implements BoardDao{

	@Autowired
	SqlSession session;
	
	final static String NAMESPACE = "mappers.BoardMapper";
	
	@Override
	public int setBoard(BoardVO bvo) {
		
		return session.insert(NAMESPACE + ".setBoard", bvo);
		
	
	}
//	자동으로 생성되는 테이블
	@Override
	public int createTblArticle(String boardCode) {
		String sql="";
		sql +="CREATE table gat_article_"+boardCode+"(";
		sql +="aid int not null auto_increment primary key,";
		sql +="subject varchar(300) not null,";
		sql +="writer varchar(20) not null,";
		sql +="content text,";
		sql +="regdate datetime,";
		sql +="hit int default 0,";
		sql +="fileName varchar(300),";
		sql +="fileOriName varchar(300),";
		sql +="fileUrl varchar(500),";
		sql +="ref int,";
		sql +="re_step int,";
		sql +="re_level int";
		sql +=");";
		
		
		return session.update(NAMESPACE + ".createTblArticle", sql);
	}
//	자동으로 생성되는 테이블
	@Override
	public int createTblComment(String boardCode) {
		String sql ="";
		sql +="CREATE table gat_comment_"+boardCode+"(";
		sql +="cid int not null auto_increment primary key,";
		sql +="aid int not null,";//댓글이 무슨 게시물에 달리는지 선택하는 부분
		sql +="comment text,";
		sql +="who varchar(20),";
		sql +="regdate datetime";
		sql +=");";
		

		return session.update(NAMESPACE + ".createTblComment", sql);
	}

	@Override
	public List<BoardVO> getBoardList(String searchOpt, String words) {
		Map<String, Object> map = new HashMap<>();
			map.put("searchOpt", searchOpt);
			map.put("words", words);
		return session.selectList(NAMESPACE + ".getBoardList", map);
	}
	
	//게시판 목록 확인 
	@Override
	public int getBoardCount(String searchOpt, String words) {
		Map<String, Object> map = new HashMap<>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		return session.selectOne(NAMESPACE + ".getBoardCount", map);
	}

		
	@Override
	public int setBoardDelete(String boardCode) {
		
		return session.delete(NAMESPACE + ".setBoardDelete", boardCode);
	}
	@Override
	public int dropTblArticle(String boardCode) {
		String str = "DROP TABLE gat_article_" + boardCode;
		return session.update(NAMESPACE + ".dropTblArticle", str);
	}
	@Override
	public int dropTblComment(String boardCode) {
		String str = "DROP TABLE gat_comment_" + boardCode;
		return session.update(NAMESPACE + ".dropTblComment", str);
	}
	@Override
	public int getBoardCode(String boardCode) {
	
		return session.selectOne(NAMESPACE + ".getBoardCode", boardCode);
	}
	
}
