package com.greenart.sample.repository.users;

import com.greenart.sample.model.UserVO;

public interface UserDao {

	public int idCheck(String userid);
	
	public int setUser(UserVO vo);
	
}
