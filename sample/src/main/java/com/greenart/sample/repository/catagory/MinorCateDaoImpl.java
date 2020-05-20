package com.greenart.sample.repository.catagory;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greenart.sample.model.MinorCateVO;

@Repository
public class MinorCateDaoImpl implements MinorCateDao {

	@Autowired SqlSession sql;

	final private static String NAMESPACE = "mappers.MinorCateMapper";
	
	@Override
	public void setMinorCate(MinorCateVO mcvo) {
		sql.insert(NAMESPACE + ".setMinorCate", mcvo);
		
	}

	@Override
	public List<MinorCateVO> getMinorCateList() {
		
		return sql.selectList(NAMESPACE + ".getMinorCateList");
	}

	@Override
	public void setMinorDelete(MinorCateVO mcvo) {
		sql.delete(NAMESPACE + ".setMinorDelete", mcvo);
		
	}
	
	
}
