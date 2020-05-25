package com.greenart.sample.service.product;

import java.util.List;

import com.greenart.sample.model.ProductVO;

public interface ProductService {

	public void setProduct(ProductVO pvo);
	
	public List<ProductVO> getProductList(int start, int end, String searchOpt, String words);
	
	public int getProductCount(String searchOpt, String words);
	
	public void setProductDelete(int pid);
	
	public ProductVO getProductView(int pid);
}
