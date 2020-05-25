package com.greenart.sample.repository.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List<ProductVO> getProductList(int start, int end, String searchOpt, String words) {
		Map<String, Object> map = new HashMap<>();
		map.put("start", start);
		map.put("end", end);
		map.put("searchOpt", searchOpt);
		map.put("words", words);
			
		return sql.selectList(NAMESPCE + ".getProductList", map);
	}

	@Override
	public int getProductCount(String searchOpt, String words) {
		Map<String, Object> map = new HashMap<>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		
		return sql.selectOne(NAMESPCE + ".getProductCount", map);
	}

	
	@Override
	public void setProductDelete(int pid) {
		sql.delete(NAMESPCE + ".setProductDelete", pid);
		
	}

	@Override
	public ProductVO getProductView(int pid) {
		
		return sql.selectOne(NAMESPCE + ".getProductView", pid);
	}



	
}
