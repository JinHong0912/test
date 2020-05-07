package com.greenart.sample.repository.users;

import java.util.List;
import java.util.Map;

import com.greenart.sample.model.UserVO;

public interface UserDao {

	public int idCheck(String userid);
	
	public int setUser(UserVO uvo);

	//접근제한자 List<UserVO>출력 메소드명 입력	
	public List<UserVO> getUsersList(); 
	
	//접근제한자(public) 화면출력(int) 메소드이름(getUsersCount) (입력)
	public int getUsersCount();
	
	public int authUpdate(Map<String, Object> map); 
}
