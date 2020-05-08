package com.greenart.sample.service.users;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.greenart.sample.model.UserVO;

public interface UserService {

	public int idCheck(String userid);
	
	public int setUser(UserVO uvo);
	
	public List<UserVO> getUsersList(String searchOpt, String  words); 
	
	public int getUsersCount(String searchOpt, String  words);

	public int authUpdate(Map<String, Object> map); 

	public int setUsersDeleteAll(int uid);

	public int setUsersDelete(int uid);

	public UserVO loginCheck(UserVO uvo, HttpSession session);

	public void logout(HttpSession session);

}
