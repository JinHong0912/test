package com.greenart.sample.service.catagory;

import java.util.List;

import com.greenart.sample.model.MajorCateVO;

public interface MajorCateService {
	public int setMajorCate(MajorCateVO mcvo);
	
	public List<MajorCateVO> getMajorCateList();
	
	public void setMajorDelete(String majorCode);

	public int getMajorCateTotal();
	
	public int getMajorCateCountOne(String majorCode);
}
