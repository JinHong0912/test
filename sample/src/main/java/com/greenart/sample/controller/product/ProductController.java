package com.greenart.sample.controller.product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
}
