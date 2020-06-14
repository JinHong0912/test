package com.greenart.sample.controller.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.greenart.sample.model.MajorCateVO;
import com.greenart.sample.model.MinorCateVO;
import com.greenart.sample.service.catagory.MajorCateService;
import com.greenart.sample.service.catagory.MinorCateService;

@Controller
@RequestMapping("/cate")
public class CategoryController {

	@Autowired
	MajorCateService mcService;
	
	@Autowired
	MinorCateService minorService;
	
	@RequestMapping("/getCategory")
	public ModelAndView getCategory() {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template","product");
		mav.addObject("mypage","category");
		
		mav.setViewName("admin/admin");
		
		return  mav;
		
	
	
	}
	
//대분류 생성하는 부분
//대분류 7개 까지만 생성 및 중복 확인 하는 부분
	@RequestMapping("/setMajorCate")
	@ResponseBody
	public String setMajorCate(@ModelAttribute MajorCateVO mcvo) {
		int totalCnt = mcService.getMajorCateTotal();
		int isChecked = mcService.getMajorCateCountOne(mcvo.getMajorCode());
		
		String msg = null;
		if( totalCnt > 7 ) {
			msg = "overflow";
		}else if( isChecked == 1 ){
			msg = "checked";	
		}else {
			mcService.setMajorCate(mcvo);
			msg = "OK";
		}
		return msg;	
	}
	
//	대분류 보여 주는 부분
	@RequestMapping("/getMajorCateList")
	@ResponseBody
	public List<MajorCateVO> getMajorCateList() {
			
	return  mcService.getMajorCateList();
	
	}
	
//	대분류 삭제 하는 부분
	@RequestMapping("/setMajorDelete")
	@ResponseBody
	public String setMajorDelete(String majorCode) {
		mcService.setMajorDelete(majorCode);
		
		return "success";
		
	}
	
//	소분류 생성 부분============================================================================
//	중복확인 
	@RequestMapping("/setMinorCate")
	@ResponseBody
	public String setMinorCate(@ModelAttribute MinorCateVO mcvo) {
		
		String msg = null;
		if( minorService.getMinorCateCountOne(mcvo) > 0) {
			msg = "checked";
			
		}else {
			msg = "OK";
			minorService.setMinorCate(mcvo);			
		}
		return msg;
	}
//	보여 주는 부분
	@RequestMapping("/getMinorCateList")
	@ResponseBody
	public List<MinorCateVO> getMinorCateList() {
		
		return minorService.getMinorCateList();
	}

//	소분류 삭제 하는 부분
	@RequestMapping("/setMinorDelete")
	@ResponseBody
	public String setMinorDelete(MinorCateVO mcvo) {
		minorService.setMinorDelete(mcvo);
		
		return "success";
		
	}
	
	@RequestMapping("/selectedMinorCateList")
	@ResponseBody
	public List<MinorCateVO> selectedMinorCateList(@RequestParam String majorName){
		return minorService.selectedMinorCateList(majorName);
	}
}
