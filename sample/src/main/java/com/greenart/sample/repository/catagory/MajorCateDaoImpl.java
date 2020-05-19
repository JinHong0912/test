package com.greenart.sample.repository.catagory;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greenart.sample.model.MajorCateVO;

@Repository
public class MajorCateDaoImpl implements MajorCateDao {

	@Autowired
	SqlSession sql;
	
	final private static String NAMESPACE = "mappers.MajorCateMapper";
	
	
	@Override
	public int setMajorCate(MajorCateVO mcvo) {
		return sql.insert(NAMESPACE + ".setMajorCate", mcvo);
	}

	@Override
	public List<MajorCateVO> getMajorCateList() {
		
		return sql.selectList(NAMESPACE + ".getMajorCateList");
	}

}
