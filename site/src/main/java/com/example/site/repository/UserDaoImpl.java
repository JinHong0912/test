package com.example.site.repository;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.site.model.UserVO;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired SqlSession sql; //디비 접속 객체 가져다 쓰기 (@Autowired)
	
	final static String namespace = "mappers.UserMapper";	
	
	
	@Override
	public int addUser(UserVO uservo) {
		
		return sql.insert(namespace + ".addUser", uservo);
	}


	@Override
	public List<UserVO> getDBUserList(int displayPost, int postNum, String searchOpt,String words) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		map.put("displayPost", displayPost);
		map.put("postNum", postNum);
		return sql.selectList(namespace + ".getUserList", map) ;
	}


	@Override
	public int getDBUserCount(String searchOpt,String words) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		return sql.selectOne(namespace + ".getTotalCount", map) ;
	}
	
	@Override
	public int authUpdate( Map<String, Object> param) {
		
		return sql.update(namespace + ".authUpdate",param) ;
	}

	@Override
	public UserVO getDBUserOne(int id) {
		
		return sql.selectOne(namespace + ".getUserOne",	id);
	}

//	@Override
//	public int getDBUserDel(int id){
//		
//		return sql.delete(namespace + ".getUserDel", id);
//	}


	//선생님
	@Override
	public int deleteUser(int id) {
		
		return sql.delete(namespace + ".deleteUser", id);
	}


	@Override
	public int updateUser(UserVO vo) {
		
		return sql.update(namespace + ".userUpdate", vo);
	}


//	public boolean loginCheck(UserVO vo) {
//		boolean result = false;
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("userid", vo.getUserid());
//		map.put("passwd", vo.getPasswd());
//		String str = sql.selectOne(namespace + ".loginCheck", map);
//		
//		//삼항연산자
//		return (str == null) ? false : true;
//	}	
	@Override
	public UserVO loginCheck(UserVO vo) {//매개변수에 값이 있으면(UserVO vo) 받을때 vo 작성해준다.

		return sql.selectOne(namespace + ".loginCheck", vo);
	
	}
	@Override
	public void logout(HttpSession session) {
		
		
	}


	@Override
	public int idCheck(String userid) {
		return sql.selectOne(namespace + ".idCheck", userid);
		
	}
	
}
