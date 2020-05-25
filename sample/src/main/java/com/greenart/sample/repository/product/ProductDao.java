package com.greenart.sample.repository.product;

import java.util.List;

import com.greenart.sample.model.ProductVO;

public interface ProductDao {

	public void setProduct(ProductVO pvo);
	
	public List<ProductVO> getProductList(int start, int end, String searchOpt, String words);
	
	public int getProductCount(String searchOpt, String words);
	
	public void setProductDelete(int pid);
	
	public ProductVO getProductView(int pid);
}
