package com.project;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;
import org.springframework.data.domain.Sort;


@Repository
public class UserDao {

	@Autowired
	private MongoTemplate mongoTemp;
	
	public void dropCollection()
	{
		mongoTemp.dropCollection(UserDao.class);
	}
	
	public List<UserDto> findList()
	{
		//방법 1 : 전체데이타를 목록으로 얻고자 할경우
		//List<UserDto> list=mongoTemp.findAll(UserDto.class,"musicdata");
		
		//지우시마세요 지웅 추후에 쿼리문쓸려면 필요합니다// -- 지웅 09.19 16:00
		//방법2 - 조건에 의한 목록을 얻고자 할경우
/*		Query query=new Query(Criteria.where("_id").in("a1","a2","a3"));
		List<UserDto> list=mongoTemp.find(query, UserDto.class);
		*/
		
	    Query query = new Query();
	    
	    query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));
	    List<UserDto> list = this.mongoTemp.find(query, UserDto.class);
	    
		
		
		
		
		return list;
	}
	

/*	public UserDto getSearchName(String name)
	{
		Query query=new Query(Criteria.where("title").is(title));
		return mongoTemp.findOne(query, UserDto.class);
	}
	*/


}
