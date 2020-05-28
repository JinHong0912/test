package com.greenart.sample.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.greenart.sample.model.MajorCateVO;
import com.greenart.sample.model.MinorCateVO;
import com.greenart.sample.model.ProductVO;
import com.greenart.sample.model.SiteInfoVO;
import com.greenart.sample.service.catagory.MajorCateService;
import com.greenart.sample.service.catagory.MinorCateService;
import com.greenart.sample.service.product.ProductService;
import com.greenart.sample.service.site.SiteInfoService;
import com.greenart.sample.service.users.UserService;

@Controller
public class HomeController {
	
	@Autowired
	UserService usersService;
	
	@Autowired SiteInfoService siService;
	
	@Autowired MajorCateService majorCateService;
	
	@Autowired MinorCateService minorCateService;
	
	@Autowired ProductService proService;
	
	// website main
	@RequestMapping("")//localhost:8888/home
	public ModelAndView getHome() {
		SiteInfoVO sivo = siService.getSiteInfo();
		List<MajorCateVO> mcvo = majorCateService.getMajorCateList(); 
		
//		메인 가지고 오는 부분
		List<ProductVO> owl = proService.getProductDisplay("main", 0, 3);
		
//		베너 가지고 오는 부분
		List<ProductVO> banner = proService.getProductDisplay("banner", 0, 2);

//		기본 가지고 오는 부분
		List<ProductVO> basic = proService.getProductDisplay("basic", 0, 5);
		
//		신상품 가지고 오는 부분
		List<ProductVO> news = proService.getProductStatus("new", 0, 10);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "home");
		mav.addObject("mypage", "view");
		mav.addObject("siteInfo", sivo);
		mav.addObject("majorList", mcvo);
		//메인에 이미지 가지고 오는 부분
		mav.addObject("owl", owl);
		mav.addObject("banner", banner);
		mav.addObject("basic", basic);
		mav.addObject("news", news);
		
		mav.setViewName("home");
		
		return  mav;//views/home.jsp
		
	}
	
	@RequestMapping("/getCategories")//localhost:8888/home
	public ModelAndView getCategories(@RequestParam String majorName, @RequestParam String minorName) {
		SiteInfoVO sivo = siService.getSiteInfo();
		
		List<MajorCateVO> mcvo = majorCateService.getMajorCateList();
		
		List<MinorCateVO> mncs = minorCateService.selectedMinorCateList(majorName);

		List<ProductVO> pvo = proService.selectedProductList(majorName, minorName);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "category");
		mav.addObject("mypage", "view");
		mav.addObject("siteInfo", sivo);
		mav.addObject("majorList", mcvo);
		mav.addObject("minorList", mncs);
		mav.addObject("majorName", majorName);
		mav.addObject("minorName", minorName);
		mav.addObject("pList", pvo);
		
		mav.setViewName("home");
		
		return  mav;//views/home.jsp
		
	}
//	상세 보기 부분
	@RequestMapping("/getProductDetail")//localhost:8888/home
	public ModelAndView getProductDetail(@RequestParam String majorName, @RequestParam String minorName, @RequestParam int pid) {
		SiteInfoVO sivo = siService.getSiteInfo();
		List<MajorCateVO> mcvo = majorCateService.getMajorCateList();
		
		List<MinorCateVO> mncs = minorCateService.selectedMinorCateList(majorName);
		
		ProductVO pvo = proService.getProductView(pid);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "productDetail");
		mav.addObject("mypage", "view");
		mav.addObject("siteInfo", sivo);
		mav.addObject("majorList", mcvo);
		mav.addObject("minorList", mncs);
		mav.addObject("majorName", majorName);
		mav.addObject("minorName", minorName);
		mav.addObject("pView",pvo);
		
		mav.setViewName("home");
		
		return  mav;//views/home.jsp
		
	}

	@RequestMapping("/setProductCart")//localhost:8888/home
	public ModelAndView setProductCart(@RequestParam String majorName, @RequestParam String minorName) {
		SiteInfoVO sivo = siService.getSiteInfo();
		List<MajorCateVO> mcvo = majorCateService.getMajorCateList();
		
		List<MinorCateVO> mncs = minorCateService.selectedMinorCateList(majorName);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "cartList");
		mav.addObject("mypage", "view");
		mav.addObject("siteInfo", sivo);
		mav.addObject("majorList", mcvo);
		mav.addObject("minorList", mncs);
		mav.addObject("majorName", majorName);
		mav.addObject("minorName", minorName);
		mav.setViewName("home");
		
		return  mav;//views/home.jsp
		
	}

	
	//login
	@RequestMapping("/login")//localhost:8888/login
	public String getLogin() {
		return "login";//views/login.jsp
		
	}
	//logout
	@RequestMapping("/logout")
	public String setLogout(HttpSession session) {
		usersService.logout(session);
		return "/login";
	}
	
	//admin
	@RequestMapping("/admin")//localhost:8888/admin
	public String getAdmin() {
		return "admin/users/userList";//views/admin.jsp
		
	}

	@RequestMapping("/shopHome")
	public String getShopHome() {
		return "/shophome/shopHome";
	}


	/*
	 * @RequestMapping("/product") public String getProduct() { return
	 * "/shophome/product"; }
	 */

//	@RequestMapping("/categories")
//	public String getCategories() {
//		return "/shophome/categories";
//	}











}
