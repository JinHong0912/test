package com.greenart.sample.repository.users;

import java.util.List;
import java.util.Map;

import com.greenart.sample.model.UserVO;

public interface UserDao {

	public int idCheck(String userid);
	
	public int setUser(UserVO uvo);

	//접근제한자 List<UserVO>출력 메소드명 입력	
	public List<UserVO> getUsersList(String searchOpt, String  words); 
	
	//접근제한자(public) 화면출력(int) 메소드이름(getUsersCount) (입력)
	public int getUsersCount(String searchOpt, String  words);
	
	public int authUpdate(Map<String, Object> map); 

	public int setUsersDeleteAll(int uid);

	public int setUsersDelete(int uid);

	//public 출력 loginCheck(입력) 한개가 아닐때 배열을 사용!!
	public UserVO loginCheck(UserVO uvo);
	
}
