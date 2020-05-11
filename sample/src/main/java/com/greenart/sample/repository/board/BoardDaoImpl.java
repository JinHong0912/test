package com.greenart.sample.repository.board;

import java.util.List;

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

	@Override
	public int createTblComment(String boardCode) {
		String sql ="";
		sql +="CREATE table gat_comment_"+boardCode+"(";
		sql +="cid int not null auto_increment primary key,";
		sql +="aid int not null,";
		sql +="comment text,";
		sql +="who varchar(20),";
		sql +="regdate datetime";
		sql +=");";
		

		return session.update(NAMESPACE + ".createTblComment", sql);
	}

	@Override
	public List<BoardVO> getBoardList() {
		
		return session.selectList(NAMESPACE + ".getBoardList");
	}

}
