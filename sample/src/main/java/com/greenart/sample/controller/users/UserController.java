package com.greenart.sample.controller.users;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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

	// href 형식으로 들어오면 여기로
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegister() {
		return "users/register";
	}

	// action 방식으로 들어오면 여기로
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

		} else {
			sb = new StringBuilder();
			sb.append("<script>");
			sb.append("alert('" + error + "');");
			sb.append("location.replace('/users/login');");
			sb.append("</script>");

		}
//
		return sb.toString();

	}

	// 아이디 중복 확인하는 부분
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

	// 리스트에서 불러 오는 부분 & 얼마나 검색 되는지 확인하는 부분
	// defaultValue 초기값
	@RequestMapping(value = "")
	public ModelAndView getUsersList(
			
			@RequestParam(defaultValue = "1") int num,
			@RequestParam(defaultValue = "userID") String searchOpt,
			@RequestParam(defaultValue = "") String words) {
		
		int usersCount = userService.getUsersCount(searchOpt, words);
		
			int end = 10;
			int start = (num - 1) * end;
			int pageNum = (int) Math.ceil( (double)usersCount / end);
		
		List<UserVO> uvo = userService.getUsersList(start, end, searchOpt, words);

		ModelAndView mav = new ModelAndView();
		if (uvo != null) {
			mav.addObject("template", "users");
			mav.addObject("mypage", "list");
			mav.addObject("usersList", uvo);
			mav.addObject("usersCount", usersCount);
			// 생략해도 되는 내용
			mav.addObject("searchOpt", searchOpt);
			mav.addObject("words", words);
			
			mav.addObject("pageNum", pageNum);
			mav.setViewName("admin/admin");
		}
		return mav;

	}

	@RequestMapping("/authUpdate")
	@ResponseBody
	public String authUpdate(@RequestParam Map<String, Object> map) {
		int result = userService.authUpdate(map);
		String msg = null;

		if (result > 0) {
			msg = "success";
		} else {
			msg = "failure";
		}
		return msg;
	}

	@RequestMapping("/setUsersDeleteAll")
	@ResponseBody
	public String setUsersDeleteAll(@RequestParam(value = "chkArr[]") List<String> chkArr) {

		int uid, result = 0;
		String msg = null;

		// for(데이터 타입 변수 : 값
		for (String list : chkArr) {// 1 ,2,3,
			uid = Integer.parseInt(list);
			userService.setUsersDeleteAll(uid);
		}
		result = 1;

		if (result == 1) {
			msg = "success";

		} else {
			msg = "error";
		}
		return msg;

	}

	@RequestMapping("/setUsersDelete")
	public String setUsersDelete(@RequestParam int uid) {
		userService.setUsersDelete(uid);

		return "redirect:/users";

	}

	// Model 빨리 하고 싶으면
	@RequestMapping("/loginCheck")
	public ModelAndView loginCheck(@ModelAttribute UserVO uvo, HttpSession session) {

		ModelAndView mav = new ModelAndView();
		if (uvo.getUserID().equals("") && uvo.getPasswd().equals("")) {
			mav.addObject("msg", "아이디나 비밀번호를 확인하세요.");
			mav.setViewName("/login");

		} else {
			UserVO vo = userService.loginCheck(uvo, session);
			if (vo == null) {
				mav.addObject("msg", "아이디나 비밀번호를 확인하세요.");
				mav.setViewName("/login");

			} else {

				
				  mav.addObject("template", "users"); 
				  mav.addObject("mypage", "list");
				 
				mav.setViewName("redirect:/users");
			}

		}

		return mav;

	}

	@RequestMapping("/getUsersView")
	public ModelAndView getUsersView(@RequestParam int uid) {
		UserVO uvo = userService.getUsersView(uid);

		ModelAndView mav = new ModelAndView();

		mav.addObject("template","users");
		mav.addObject("mypage","view");
		mav.addObject("usersView", uvo);
		mav.setViewName("admin/admin");
		return mav;

	}

	@RequestMapping("/getUsersModify")
	public ModelAndView getUsersModify(int uid) {
		ModelAndView mav = new ModelAndView();
		UserVO uvo = userService.getUsersView(uid);

		mav.addObject("template", "users");
		mav.addObject("mypage", "modify");
		mav.addObject("usersView", uvo);
		mav.setViewName("admin/admin");
		return mav;

	}

//	 회원 수정 부분
	@RequestMapping("/userUpdate")
	@ResponseBody
	public String update(UserVO uvo) {
		int result = userService.userUpdate(uvo);
		StringBuilder sb = null; 
		
		if( result > 0) {
			sb = new StringBuilder();
			sb.append("<script>");
			sb.append("alert('회원정보가 수정 되었습니다.');");
			sb.append("window.location.replace('/users/getUsersView?uid="+uvo.getUid()+"');");
			sb.append("</script>");
		
		}else {
			sb.append("<script>");
			sb.append("alert('회원정보가 수정 되지 않았습니다.');");
			sb.append("window.location.replace('/users/getUsersModifyInc');");
			sb.append("</script>");
		}
		
		return sb.toString();
	}	

	
	
}