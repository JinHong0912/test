package com.greenart.sample.repository.users;

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
	public int setUser(UserVO vo) {
		return sql.insert(namespace + ".setUser" , vo);
	}

}
