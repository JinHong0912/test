package com.greenart.sample.controller.users;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.greenart.sample.model.UserVO;
import com.greenart.sample.service.users.UserService;

@Controller
@RequestMapping("/users")
public class UserController {

	@Autowired
	UserService userService;

	//href 형식으로 들어오면 여기로
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegister() {
		return "users/register";
	}

	//action 방식으로 들어오면 여기로
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	@ResponseBody
	public String setRegister(@ModelAttribute UserVO uvo) {// Model 저장 View 화면 이동 //ModelAndView 저장도 하면서 보여 주는 것이다
		int result = userService.setUser(uvo);// 긴 문장을 간략화 하기 위해서 사용
		StringBuilder sb = new StringBuilder();
		String msg = "회원가입이 완료 되었습니다.";
		String error = "시스템 오류입니다. 관리자에 문의하세요.";
		
		if (result > 0) {
			sb.append("<script>");
			sb.append("alert('" + msg + "');");
			sb.append("location.replace('/login');");
			sb.append("</script>");

		}else{
			sb = new StringBuilder();
			sb.append("<script>");
			sb.append("alert('" + error + "');");
			sb.append("location.replace('/users/login');");
			sb.append("</script>");

		}

		return sb.toString();

	}
		

	@RequestMapping("/idCheck")
	@ResponseBody // javascript 사용시
	public String idCheck(@RequestParam String userid) {// ajax 쪽에서 넘어
		int result = userService.idCheck(userid);

		String str = null;
		if (result > 0) {
			str = "NO";

		} else {
			str = "YES";
		}
		return str;
	}

	@RequestMapping("")
	public ModelAndView getUsersList() {
		List<UserVO> uvo = userService.getUsersList();
		
		ModelAndView mav = new ModelAndView();
		if( uvo != null) {
		mav.addObject("template", "users");
		mav.addObject("usersList", uvo);
		mav.setViewName("admin/admin");
	}
		return mav;
		
	}
	
}
