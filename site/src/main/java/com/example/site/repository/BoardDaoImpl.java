package com.example.site.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.site.model.BoardVO;


@Repository
public class BoardDaoImpl implements BoardDao {

		//db 연결
	@Autowired
	private SqlSession sql;

	private final String namespace = "mappers.BoardMapper";
	
		@Override
		public int setArticle(BoardVO bvo) {
			
			return sql.insert(namespace + ".setArticle" , bvo);
		}

		@Override
		public List<BoardVO> getArtcleList() {
			
			return sql.selectList(namespace + ".getArticleList");
		}
	
	
	
		
}
