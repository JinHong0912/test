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
import com.greenart.sample.model.SiteInfoVO;
import com.greenart.sample.service.catagory.MajorCateService;
import com.greenart.sample.service.catagory.MinorCateService;
import com.greenart.sample.service.site.SiteInfoService;
import com.greenart.sample.service.users.UserService;

@Controller
public class HomeController {
	
	@Autowired
	UserService usersService;
	
	@Autowired SiteInfoService siService;
	
	@Autowired MajorCateService majorCateService;
	
	@Autowired MinorCateService minorCateService;
	
	// website main
	@RequestMapping("")//localhost:8888/home
	public ModelAndView getHome() {
		SiteInfoVO sivo = siService.getSiteInfo();
		List<MajorCateVO> mcvo = majorCateService.getMajorCateList(); 
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "home");
		mav.addObject("mypage", "view");
		mav.addObject("siteInfo", sivo);
		mav.addObject("majorList", mcvo);
		mav.setViewName("home");
		
		return  mav;//views/home.jsp
		
	}
	
	@RequestMapping("/getCategories")//localhost:8888/home
	public ModelAndView getCategories(@RequestParam String majorName, @RequestParam String minorName) {
		SiteInfoVO sivo = siService.getSiteInfo();
		
		List<MajorCateVO> mcvo = majorCateService.getMajorCateList();
		
		List<MinorCateVO> mncs = minorCateService.selectedMinorCateList(majorName);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "category");
		mav.addObject("mypage", "view");
		mav.addObject("siteInfo", sivo);
		mav.addObject("majorList", mcvo);
		mav.addObject("minorList", mncs);
		mav.addObject("majorName", majorName);
		mav.addObject("minorName", minorName);
		mav.setViewName("home");
		
		return  mav;//views/home.jsp
		
	}
	@RequestMapping("/getProductDetail")//localhost:8888/home
	public ModelAndView getProductDetail(@RequestParam String majorName, @RequestParam String minorName) {
		SiteInfoVO sivo = siService.getSiteInfo();
		List<MajorCateVO> mcvo = majorCateService.getMajorCateList();
		
		List<MinorCateVO> mncs = minorCateService.selectedMinorCateList(majorName);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "productDetail");
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
