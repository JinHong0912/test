package com.greenart.sample.service.site;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenart.sample.model.SiteInfoVO;
import com.greenart.sample.repository.siteInfo.SiteInfoDao;

@Service
public class SiteInfoServiceImpl implements SiteInfoService{

	@Autowired SiteInfoDao siDao;
	
		
	@Override
	public SiteInfoVO getSiteInfo() {
		
		return siDao.getSiteInfo();
	}

	@Override
	public void setSiteInfo(SiteInfoVO sivo) {
		siDao.setSiteInfo(sivo);		
	}

}
