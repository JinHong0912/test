package com.greenart.sample.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.greenart.sample.service.users.UserService;

@Controller
public class HomeController {
	
	@Autowired
	UserService usersService;
	
	// website main
	@RequestMapping("")//localhost:8888/home
	public String getHome() {
		return "home";//views/home.jsp
		
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

	@RequestMapping("/categories")
	public String getCategories() {
		return "/shophome/categories";
	}











}
