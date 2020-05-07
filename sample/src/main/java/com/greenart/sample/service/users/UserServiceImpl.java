package com.greenart.sample.service.users;

import java.util.List;
import java.util.Map;

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
	public List<UserVO> getUsersList(String searchOpt, String  words) {
	
		return dao.getUsersList(searchOpt, words);
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

}
