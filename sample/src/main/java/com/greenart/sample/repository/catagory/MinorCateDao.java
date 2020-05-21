package com.greenart.sample.repository.catagory;

import java.util.List;

import com.greenart.sample.model.MinorCateVO;

public interface MinorCateDao {

	public void setMinorCate(MinorCateVO mcvo);
	
	public List<MinorCateVO> getMinorCateList();
	
	public void setMinorDelete(MinorCateVO mcvo);

	public int getMinorCateCountOne(MinorCateVO mcvo);
	
	public List<MinorCateVO> selectedMinorCateList(String majorName);

}

