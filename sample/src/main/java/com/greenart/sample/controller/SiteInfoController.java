package com.greenart.sample.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.greenart.sample.model.SiteInfoVO;
import com.greenart.sample.service.site.SiteInfoService;

@Controller
public class SiteInfoController {

	@Autowired SiteInfoService siService;
	
	
	@RequestMapping("/siteInfo")//localhost:8888/siteInfo
	public ModelAndView siteInfo() {
		
		SiteInfoVO sivo = siService.getSiteInfo();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "siteInfo");
		mav.addObject("mypage", "view");
		mav.addObject("sView",sivo );
		
		mav.setViewName("admin/admin");
		
		return mav;
	}
	
	@RequestMapping("/siteInfo/setSiteInfo")
	
	public ModelAndView setSiteInfo(@ModelAttribute SiteInfoVO sivo) {
		siService.setSiteInfo(sivo);
//		SiteInfoVO svo = siService.getSiteInfo();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "siteInfo");
		mav.addObject("mypage", "view");
		mav.addObject("sView", siService.getSiteInfo());

		//		mav.addObject("sView", svo);

		mav.setViewName("admin/admin");
		return mav;
	}
	
	
	
}
