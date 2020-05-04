package com.example.site.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.site.model.BoardVO;
import com.example.site.model.UserVO;


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
		public List<BoardVO> getArtcleList(String searchOpt,String words) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("searchOpt", searchOpt);
			map.put("words", words);
			return sql.selectList(namespace + ".getArticleList", map);
		}

		@Override
		public BoardVO getArticlOne(int id) {// dao 디비에 저장
			return sql.selectOne(namespace + ".getArticleOne", id);
		}

		@Override
		public void setHitUp(int id) {
			sql.update(namespace + ".hitUp", id);
			
		}


		@Override
		public int deleteboard(int id) {
			return sql.delete(namespace + ".deleteboard", id);
		}

		@Override
		public int bupdate(BoardVO vo) {
			return sql.update(namespace + ".bupdate", vo);
		}
	
	
	
		
}
