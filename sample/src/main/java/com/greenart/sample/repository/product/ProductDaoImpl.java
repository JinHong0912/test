package com.greenart.sample.repository.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greenart.sample.model.ProductVO;

@Repository
public class ProductDaoImpl implements ProductDao {
	
	@Autowired SqlSession sql;
	
	private final static String NAMESPCE = "mappers.ProductMapper";
	
	@Override
	public void setProduct(ProductVO pvo) {
		sql.insert(NAMESPCE + ".setProduct", pvo);
		
	}

	@Override
	public List<ProductVO> getProductList() {
		
		return sql.selectList(NAMESPCE + ".getProductList");
	}

}
