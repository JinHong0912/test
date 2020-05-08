package com.greenart.sample.repository.users;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greenart.sample.model.UserVO;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired
	SqlSession sql; //디비 접속 객체 가져다 쓰기 (@Autowired)
	
	final static String namespace = "mappers.UsersMapper";
	
	@Override
	public int idCheck(String userid) {
	return sql.selectOne(namespace + ".idCheck", userid);
		
	}

	@Override
	public int setUser(UserVO uvo) {
		return sql.insert(namespace + ".setUser" , uvo);
	}

	@Override
	public List<UserVO> getUsersList(int start,int end,String searchOpt, String  words){
		Map<String, Object> map = new HashMap<>();
		map.put("start", start);
		map.put("end", end);
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		return sql.selectList(namespace+ ".getUsersList", map);
		
	}
	
	//Service는 괄호 안에 값을 여러게 가능 -> ex(namespace + ".getUsersCount",A,B,C), dao는 여러개 X (collection -hashMap, dto) 사용해야 한다.	
	@Override
	public int getUsersCount(String searchOpt, String  words) {
		Map<String, Object> map = new HashMap<>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		return sql.selectOne(namespace + ".getUsersCount", map);
	}

	@Override
	public int authUpdate(Map<String, Object> map) {
		return sql.update(namespace + ".authUpdate", map);
	 }

	@Override
	public int setUsersDeleteAll(int uid) {
		return sql.delete(namespace + ".setUsersDeleteAll", uid );
	}

	@Override
	public int setUsersDelete(int uid) {
		
		return sql.delete(namespace + ".setUsersDelete", uid );
	}

	@Override
	public UserVO loginCheck(UserVO uvo) {
		return sql.selectOne(namespace + ".loginCheck" , uvo);
	}

	@Override
	public UserVO getUsersView(int uid) {
		
		return sql.selectOne(namespace + ".getUsersView", uid);
	}

	

}
