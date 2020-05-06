package com.greenart.sample.repository.users;

import java.util.List;

import com.greenart.sample.model.UserVO;

public interface UserDao {

	public int idCheck(String userid);
	
	public int setUser(UserVO vo);

	//접근제한자 List<UserVO>출력 메소그명 입력	
	public List<UserVO> getUsersList(); 
}
