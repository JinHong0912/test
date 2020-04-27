package com.example.site.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.site.model.UserVO;
import com.example.site.service.UserService;

@Controller // c + s + o 인포트 단축기
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;

	// url : /user/register -> @RequestMapping("/user/register")
	// 회원가입 메소드 이름 (viewRegister, getRegister)
	// 화면에 보여질 jsp 파일은 리턴 타입은 String
	// return "jsp 파일 이름을 적되 확장자는 제외"
	@RequestMapping("/register") // localhost:8888
	public String viewRegister() {
		return "/user/register";// user는 view 밑의 폴더
	}

	@RequestMapping("/addDo")
	@ResponseBody // javascript (jquery, ajax, json,....)
	public String addRegister(@ModelAttribute UserVO vo) { // Model 저장 View 화면 이동 //ModelAndView 저장도 하면서 보여 주는 것이다.
		int result = userService.addUser(vo);
		StringBuilder sb = new StringBuilder();

		if (result > 0) {
			String mag = "회원가입이 완료 되었습니다.";
			sb.append("<script>");
			sb.append("alert('" + mag + "');");
			sb.append("location.replace('/user/login');");
			sb.append("</script>");

		}

		return sb.toString();

	}

	@RequestMapping("/list")
	public ModelAndView viewList(
			@RequestParam(defaultValue = "1") int num,
			@RequestParam(defaultValue = "all") String searchOpt,
			@RequestParam(defaultValue = "") String words) {
		ModelAndView mav = new ModelAndView();
		int count = userService.getDBUserCount(searchOpt , words);
		//paging custom
		int postNum = 5;
		
		//(총 게시물 수 / 한 페이지에 출력할 개수) -> 올림 처리(ceil)
		int pageNum = (int) Math.ceil((double) count / postNum);
		
		int displayPost = (num - 1)* postNum;
		
		//paging custom
		List<UserVO> list = userService.getDBUserList( displayPost, postNum ,searchOpt , words);

		
		// addObject ("별명" , 값) -> list.jsp 넘겨줄 값이 뭔지
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.addObject("searchOpt", searchOpt);
		mav.addObject("words", words);
		mav.addObject("pageNum", pageNum);
		
		// setViewName -> 값을 가지고 어느 페이지로 이동하면 되는지...
		mav.setViewName("/user/list");
		return mav;
	}

	// url : /user/login -> @RequestMapping("/user/login")
	// 로그인 메소드 이름 (viewLogin, getLogin)
	// 화면에 보여질 jsp 파일은 리턴 타입은 String
	@RequestMapping("/login")
	public String viewLogin() {
		return "/user/login";
	}

	@RequestMapping("/authUpdate")
	@ResponseBody // javascript
	public String authUpdate(@RequestParam Map<String, Object> param) {
		int result = userService.authUpdate(param);
		String authCheck = null;

		if (result > 0) {
			authCheck = "권한변경 성공하였습니다.";
		} else {
			authCheck = "권한변경 실패하였습니다.";

		}

		return authCheck;

	}

	@RequestMapping("/view")
	public ModelAndView ShowView(@RequestParam int id) {
		UserVO vo = userService.getDBUserOne(id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", vo); // 객체 테이터 값 받아오기
		mav.setViewName("/user/view");

		return mav;
	}


//	@RequestMapping("/delete")
//	@ResponseBody // javascript
//	public String getDBUserDel(@RequestParam int id) {
//		int result = userService.getDBUserDel(id);
//		StringBuilder sb = new StringBuilder();
//
//		if (result > 0) {
//			String mag = "회원정보를 삭제 했습니다.";
//			sb.append("<script>");
//			sb.append("alert('" + mag + "');");
//			sb.append("location.replace('/user/list');");
//			sb.append("</script>");
//
//		}
//		return sb.toString();// StringBuilder 이걸 사용 하면 toString() 사용해야 한다.
//
//	}
			
	// 선생님
	
			@RequestMapping("/delete")
			public String deleteUser(@RequestParam int id) {
				int result = userService.deleteUser(id);
				
				return "redirect:/user/list";
				//forward return "/user/list"; -> /user/list
				//redirect "redirect:/user/list -> localhost:8888/user/list
			}

			@RequestMapping("/updateView")
			public ModelAndView updateView(@RequestParam int id) {
				UserVO vo = userService.getDBUserOne(id);
				ModelAndView mav = new ModelAndView();
				mav.addObject("vo", vo);
				mav.setViewName("/user/updateView");
				
				return mav;
			}

			@RequestMapping("/updateDo")
			@ResponseBody
			public String updateDo(UserVO vo) {
				int result = userService.updateUser(vo);
				StringBuilder sb = null; 
				
				if( result > 0) {
					sb = new StringBuilder();
					sb.append("<script>");
					sb.append("alert('회원정보가 수정 되었습니다.');");
					sb.append("location.replace('/user/view?id="+vo.getId()+"');");
					sb.append("</script>");
				
				}else {
					sb.append("<script>");
					sb.append("alert('회원정보가 수정 되지 않았습니다.');");
					sb.append("location.replace('/user/list');");
					sb.append("</script>");
				}
				
				return sb.toString();
			}
			
			@RequestMapping("/loginCheck")
			public ModelAndView loginCheck(@ModelAttribute UserVO vo , HttpSession session) {
					UserVO uservo = userService.loginCheck(vo, session);
					ModelAndView mav = new ModelAndView();
					
					if( uservo != null) {
						mav.setViewName("redirect:/admin/home");// 정상적으로 세션이 작동 되면
						//redirect 문제가 있을때 사용 보여주는 걸로는 사용 안함
					}else {
						
						mav.addObject("msg", "아이디나 비밀번호를 확인하세요.");
						//back 버튼 누른다든지 아니면 프로그램 동작 : redirect
						//redirect(리다이렉트) : 뒤에 눈에 보이지 않게 넘어 오는 데이터가 X
						mav.setViewName("/user/login");//forward(포워딩): 사용시 -> 사용자 데이터가 남아 있음
						
					}
				
				return mav;
				
			}
			
			
			@RequestMapping("/logout")
			public ModelAndView logout(HttpSession session) {
				    userService.logout(session);
				    ModelAndView mav = new ModelAndView();
				    mav.addObject("msg", "로그아웃이 되었습니다.");
				    mav.setViewName("/user/login");
				
				    return mav;
			}
			@RequestMapping("/idCheck")
			@ResponseBody//javascript 사용시
			public String idCheck(@RequestParam String userid) {//ajax 쪽에서 넘어
				int result = userService.idCheck(userid);
			
				String str = null;
				if( result > 0) {
					str = "NO";
					
				}else {
					str = "YES";
				}
				return str;
			}

			
}
			
			
			
			
			
//			public ModelAndView loginCheck(@ModelAttribute UserVO vo, HttpSession session) {//Http Session 추가하기
//				boolean result = userService.loginCheck(vo, session);
//				ModelAndView mav = new ModelAndView();
//				
//				if (result) {
//					mav.addObject("mag", "로그인에 성공했습니다.");
//					mav.setViewName("/admin/home");
//				
//				}else {
//					mav.addObject("mag","아이디나 비밀번호를 확인하세요.");
//					mav.setViewName("/admin/login");
//					
//				}
//				
//				return mav;
//				
//			}

