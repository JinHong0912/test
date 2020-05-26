package com.greenart.sample.repository.siteInfo;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greenart.sample.model.SiteInfoVO;

@Repository
public class SiteInfoDaoImpl implements SiteInfoDao{

	@Autowired SqlSession sql;
	private final static String NAMESPCE = "mappers.SiteInfoMapper";
	
	@Override
	public SiteInfoVO getSiteInfo() {
		
		return sql.selectOne(NAMESPCE +".getSiteInfo");
	}

	@Override
	public void setSiteInfo(SiteInfoVO sivo) {
		sql.update(NAMESPCE	+ ".setSiteInfo",sivo);
		
	}

}
