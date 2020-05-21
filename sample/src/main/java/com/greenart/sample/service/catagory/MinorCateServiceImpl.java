package com.greenart.sample.service.catagory;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenart.sample.model.MinorCateVO;
import com.greenart.sample.repository.catagory.MinorCateDao;

@Service
public class MinorCateServiceImpl implements MinorCateService {

	
	@Autowired MinorCateDao mcDao;

	@Override
	public void setMinorCate(MinorCateVO mcvo) {
		 mcDao.setMinorCate(mcvo);
		
	}

	@Override
	public List<MinorCateVO> getMinorCateList() {
		
		return mcDao.getMinorCateList();
	}

	@Override
	public void setMinorDelete(MinorCateVO mcvo) {
		mcDao.setMinorDelete(mcvo);
		
	}

	@Override
	public int getMinorCateCountOne(MinorCateVO mcvo) {
	
		return mcDao.getMinorCateCountOne(mcvo);
	}

	@Override
	public List<MinorCateVO> selectedMinorCateList(String majorName) {
		
		return mcDao.selectedMinorCateList(majorName);
	}
	
	
}
