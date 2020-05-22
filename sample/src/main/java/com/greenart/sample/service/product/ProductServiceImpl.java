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
	public List<ProductVO> getProductList() {
		
		return productDao.getProductList();
	}

}
