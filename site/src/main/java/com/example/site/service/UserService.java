package com.example.site.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.example.site.model.UserVO;

public interface UserService {

	public int addUser(UserVO vo);

	public List<UserVO> getDBUserList(int displayPost, int postNum, String searchOpt,String words);
	
	public int getDBUserCount(String searchOpt ,String words);

	public int authUpdate( Map<String, Object> param);//map(hashmap) : key value

	public UserVO getDBUserOne(int id);
	
	//public int getDBUserDel(int id);
	
	//선생님
	public int deleteUser(int id);
	
	public int updateUser(UserVO vo);
	
	//첫번쨰 
	//public boolean loginCheck(UserVO vo, HttpSession session);
	//두번째 : xml 에서 검색한 결과를 이용해서 session(연결정보)에 등록
	public UserVO loginCheck(UserVO vo, HttpSession session);
	
	
	public void logout(HttpSession session);

	public int idCheck(String userid);
	

}

