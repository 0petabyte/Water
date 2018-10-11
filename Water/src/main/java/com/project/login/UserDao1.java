package com.project.login;



import java.sql.SQLException;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao1 extends SqlSessionDaoSupport{
	
	/*public String join(String user_uid) {
			
			return getSqlSession().selectOne("user.join",user_uid);
		}*/
	
	public void insertuser(UserDto1 dto) throws SQLException{
		
		try{
		getSqlSession().insert("user.insertuser",dto);
		}catch(DuplicateKeyException e)
		{
			System.out.println(e.getMessage());
		}
	}

}
