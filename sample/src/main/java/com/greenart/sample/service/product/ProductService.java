package com.greenart.sample.service.product;

import java.util.List;

import com.greenart.sample.model.ProductVO;

public interface ProductService {

	public void setProduct(ProductVO pvo);
	
	public List<ProductVO> getProductList(int start, int end, String searchOpt, String words);
	//메인 ,베너 가지고 오는 부분
	public List<ProductVO> getProductDisplay(String productDisplay, int start, int end);
	//기본 불러 오는 부분
	public List<ProductVO> getProductStatus(String productStatus, int start, int end);
	
	public int getProductCount(String searchOpt, String words);
	
	public void setProductDelete(int pid);
	
	public ProductVO getProductView(int pid);
}
