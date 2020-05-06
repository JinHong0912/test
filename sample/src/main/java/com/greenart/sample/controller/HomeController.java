package com.greenart.sample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	
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
	//admin
	@RequestMapping("/admin")//localhost:8888/admin
	public String getAdmin() {
		return "admin/users/userList";//views/admin.jsp
		
	}
}
