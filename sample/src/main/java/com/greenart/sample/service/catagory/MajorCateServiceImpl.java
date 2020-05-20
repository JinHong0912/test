package com.greenart.sample.service.catagory;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenart.sample.model.MajorCateVO;
import com.greenart.sample.repository.catagory.MajorCateDao;

@Service
public class MajorCateServiceImpl implements MajorCateService {

	@Autowired MajorCateDao mcDao;
	
	
	
	@Override
	public int setMajorCate(MajorCateVO mcvo) {
				
		return mcDao.setMajorCate(mcvo);
	}

	@Override
	public List<MajorCateVO> getMajorCateList() {
		
		return mcDao.getMajorCateList();
	}

	@Override
	public void setMajorDelete(String majorCode) {
		
		 mcDao.setMajorDelete(majorCode);
	}

	@Override
	public int getMajorCateTotal() {
		
		return mcDao.getMajorCateTotal();
	}

	@Override
	public int getMajorCateCountOne(String majorCode) {
		
		return mcDao.getMajorCateCountOne(majorCode);
	}

}
