package com.greenart.sample.service.users;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenart.sample.model.UserVO;
import com.greenart.sample.repository.users.UserDao;


@Service
public class UserServiceImpl implements UserService{

	
	 @Autowired//UserDao에 있는것 가지고 온것 
	 UserDao dao;
	 
	
	@Override
	public int idCheck(String userid) {
		
		return dao.idCheck(userid);
	}


	@Override
	public int setUser(UserVO uvo) {
		
		return dao.setUser(uvo);
	}


	@Override
	public List<UserVO> getUsersList(int start,int end, String searchOpt, String  words) {
	
		return dao.getUsersList(start, end, searchOpt, words);
	}


	@Override
	public int getUsersCount(String searchOpt, String  words) {
		
		return dao.getUsersCount(searchOpt, words);
		
	}


	@Override
	public int authUpdate(Map<String, Object> map) {
		
		return dao.authUpdate(map);
	}


	@Override
	public int setUsersDeleteAll(int uid) {
		
		return dao.setUsersDeleteAll(uid);
	}


	@Override
	public int setUsersDelete(int uid) {
		
		return dao.setUsersDelete(uid);
	}


	@Override
	public UserVO loginCheck(UserVO uvo, HttpSession session) {
		UserVO result = dao.loginCheck(uvo);
		
		if( result != null) {
			session.setAttribute("userID", result.getUserID());
			session.setAttribute("userName", result.getUserName());
			session.setAttribute("auth", result.getAuth());
		}
		
		return result;
	}

	//로그아웃 session을 끊어 주는 부분
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
		
	}


	@Override
	public UserVO getUsersView(int uid) {
	
		return dao.getUsersView(uid);
	}

}
