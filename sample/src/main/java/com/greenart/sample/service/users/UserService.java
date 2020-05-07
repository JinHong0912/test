package com.greenart.sample.service.users;

import java.util.List;
import java.util.Map;

import com.greenart.sample.model.UserVO;

public interface UserService {

	public int idCheck(String userid);
	
	public int setUser(UserVO uvo);
	
	public List<UserVO> getUsersList(); 
	
	public int getUsersCount();

	public int authUpdate(Map<String, Object> map); 
}
