package com.greenart.sample.service.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenart.sample.model.ProductVO;
import com.greenart.sample.repository.product.ProductDao;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired ProductDao productDao;
	
	
	@Override
	public void setProduct(ProductVO pvo) {
		
		productDao.setProduct(pvo);
	}


	@Override
	public List<ProductVO> getProductList(int start, int end, String searchOpt, String words) {
		
		return productDao.getProductList(start, end, searchOpt, words);
	}

	@Override
	public int getProductCount(String searchOpt, String words) {
		
		return productDao.getProductCount(searchOpt,words);
	}
	
	@Override
	public void setProductDelete(int pid) {
		productDao.setProductDelete(pid);
		
	}


	@Override
	public ProductVO getProductView(int pid) {
		
		return productDao.getProductView(pid);
	}


	@Override
	public List<ProductVO> getProductDisplay(String productDisplay, int start, int end) {
		
		return productDao.getProductDisplay(productDisplay, start, end);
	}


	@Override
	public List<ProductVO> getProductStatus(String productStatus, int start, int end) {
		
		return productDao.getProductStatus(productStatus, start, end);
	}


	@Override
	public List<ProductVO> selectedProductList(String majorName, String minorName) {
		
		return productDao.selectedProductList(majorName, minorName);
	}

}
