package com.greenart.sample.repository.users;

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
	public List<UserVO> getUsersList(){
		return sql.selectList(namespace+ ".getUsersList");
		
	}
	
	//Service는 괄호 안에 값을 여러게 가능 -> ex(namespace + ".getUsersCount",A,B,C), dao는 여러개 X (collection -hashMap, dto) 사용해야 한다.	
	@Override
	public int getUsersCount() {
		return sql.selectOne(namespace + ".getUsersCount");
	}

	@Override
	public int authUpdate(Map<String, Object> map) {
		return sql.update(namespace + ".authUpdate", map);
	 }


}
