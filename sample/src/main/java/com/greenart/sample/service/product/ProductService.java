package com.greenart.sample.service.product;

import java.util.List;

import com.greenart.sample.model.ProductVO;

public interface ProductService {

	public void setProduct(ProductVO pvo);
	
	public List<ProductVO> getProductList();
}
