package com.example.site.repository;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.example.site.model.UserVO;

public interface UserDao {
		//회원가입 메소드 이름 규칙 정하기
		public int addUser(UserVO uservo);// getter, setter

		public List<UserVO> getDBUserList(int displayPost, int postNum, String searchOpt,String words);
		
		public int getDBUserCount(String searchOpt,String words);

		public int authUpdate( Map<String, Object> param); //map(hashmap) : key value

		public UserVO getDBUserOne(int id);

//		public int getDBUserDel(int id);

		//선생님
		public int deleteUser(int id);
		
		public int updateUser(UserVO vo);

		//첫번쨰
		//public boolean loginCheck(UserVO vo);
			
		public UserVO loginCheck(UserVO vo);//return 화면에 표시 할 때 사용
		
		public void logout(HttpSession session);
		
		public int idCheck(String userid);
		
		
}

