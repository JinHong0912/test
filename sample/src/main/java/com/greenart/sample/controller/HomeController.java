package com.greenart.sample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	
	// website main
	@RequestMapping("")//localhost:9999/home
	public String getHome() {
		return "home";//views/home.jsp
		
	}

	//login
	@RequestMapping("/login")//localhost:9999/login
	public String getLogin() {
		return "login";//views/login.jsp
		
	}
	//admin
	@RequestMapping("/admin")//localhost:9999/admin
	public String getAdmin() {
		return "admin/users/userList";//views/admin.jsp
		
	}
}
