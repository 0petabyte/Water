package com.project.login;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao1 extends SqlSessionDaoSupport{
	
	public String join(String user_uid) {
			
			return getSqlSession().selectOne("user.join",user_uid);
		}
	
	public void insertuser(UserDto1 dto){
		
		getSqlSession().insert("user.insertuser",dto);
	}

}
