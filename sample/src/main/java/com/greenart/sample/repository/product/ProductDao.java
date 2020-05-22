package com.greenart.sample.repository.product;

import java.util.List;

import com.greenart.sample.model.ProductVO;

public interface ProductDao {

	public void setProduct(ProductVO pvo);
	
	public List<ProductVO> getProductList();
}
