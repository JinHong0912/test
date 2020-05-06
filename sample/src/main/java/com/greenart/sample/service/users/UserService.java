package com.greenart.sample.service.users;

import java.util.List;

import com.greenart.sample.model.UserVO;

public interface UserService {

	public int idCheck(String userid);
	
	public int setUser(UserVO vo);
	
	public List<UserVO> getUsersList(); 
}
