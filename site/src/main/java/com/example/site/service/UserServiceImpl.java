package com.example.site.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.site.model.UserVO;
import com.example.site.repository.UserDao;

@Service //비지니스 로직 처리
public class UserServiceImpl implements UserService{

	@Autowired//UserDao에 있는것 가지고 온것
	UserDao dao;
	
	@Override
	public int addUser(UserVO vo) {
		return dao.addUser(vo);
	}

	@Override
	public List<UserVO> getDBUserList(int displayPost, int postNum, String searchOpt,String words) {
		
		return dao.getDBUserList(displayPost, postNum, searchOpt, words);
	}

	@Override
	public int getDBUserCount(String searchOpt,String words) {
		
		return dao.getDBUserCount(searchOpt, words);
	}
	
	@Override
	public int authUpdate( Map<String, Object> param){//map(hashmap) : key value{
		
		return dao.authUpdate(param);
	}
	
	@Override
	public UserVO getDBUserOne(int id){

		return dao.getDBUserOne(id);
	}

//	@Override
//	public int getDBUserDel(int id){
//		
//		return dao.getDBUserDel(id);
//	}
//	

	//선생님
	@Override
	public int deleteUser(int id) {
		
		return dao.deleteUser(id);
	}

	@Override
	public int updateUser(UserVO vo) {
		
		return dao.updateUser(vo);
	}

//	@Override
//	첫번째
//	public boolean loginCheck(UserVO vo, HttpSession session) {
//		boolean result = dao.loginCheck(vo);
//		
//		if( result ) {
//			session.setAttribute("userid", vo.getUserid());
//			session.setAttribute("name", vo.getName());
//			session.setAttribute("auth", vo.getAuth());
//			
//		}
//		
//		return result;
//	}
	@Override
	public UserVO loginCheck(UserVO vo, HttpSession session) {
		UserVO uservo = dao.loginCheck(vo);//xml -> userid , name , auth
		//session을 만드는 역활
		if( uservo != null) {//uservo는 객체기 때문에 null 값을 넣어 준다.
		session.setAttribute("userid", uservo.getUserid());
		session.setAttribute("username", uservo.getName());
		session.setAttribute("auth", uservo.getAuth());
		}
		
		return uservo;
	}

	@Override
	public void logout(HttpSession session) {
		
		session.invalidate();
		
	}

	@Override
	public int idCheck(String userid) {
		
		return dao.idCheck(userid);
	}
	
	
	
}
