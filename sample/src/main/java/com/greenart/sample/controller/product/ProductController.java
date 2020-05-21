package com.greenart.sample.controller.product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/product")
public class ProductController {

		@RequestMapping("")
		public ModelAndView getProductList() {
			ModelAndView mav = new ModelAndView();
			mav.addObject("template","product");
			mav.addObject("mypage","list");
			
			
			mav.setViewName("admin/admin");
			
			return  mav;
		}
		//보여주는 역활
		@RequestMapping(value = "/setProduct", method = RequestMethod.GET)
		public ModelAndView getProduct() {
			ModelAndView mav = new ModelAndView();
			
			mav.addObject("template","product");
			mav.addObject("mypage","insert");
			
			mav.setViewName("admin/admin");
			return mav;
		}
		
		//저장 하는 역활
		@RequestMapping(value = "/setProduct", method = RequestMethod.POST)
		public ModelAndView setProduct() {
			ModelAndView mav = new ModelAndView();
			
			return mav;
		}
		



}
