package com.greenart.sample.controller.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.greenart.sample.model.MajorCateVO;
import com.greenart.sample.service.catagory.MajorCateService;

@Controller
@RequestMapping("/cate")
public class CategoryController {

	@Autowired
	MajorCateService mcService;
	
	@RequestMapping("/getCategory")
	public ModelAndView getCategory() {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template","product");
		mav.addObject("mypage","category");
		
		mav.setViewName("admin/admin");
		
		return  mav;
	}
	
	@RequestMapping("/setMajorCate")
	@ResponseBody
	public int setMajorCate(@ModelAttribute MajorCateVO mcvo) {
			
	return  mcService.setMajorCate(mcvo);
	
	}
	
	@RequestMapping("/getMajorCateList")
	@ResponseBody
	public List<MajorCateVO> getMajorCateList() {
			
	return  mcService.getMajorCateList();
	
	}
	
}
