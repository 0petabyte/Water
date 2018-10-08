package com.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

@Repository
public class RealtimeDao {

	@Autowired
	private MongoTemplate mongoTemp;
	
	public void dropCollection()
	{
		mongoTemp.dropCollection(RealtimeDao.class);
	}
	
	public List<RealtimeDto> findList()
	{
		//방법 1 : 전체데이타를 목록으로 얻고자 할경우
		//List<UserDto> list=mongoTemp.findAll(UserDto.class,"musicdata");
		

		//방법2 - 조건에 의한 목록을 얻고자 할경우
/*		Query query=new Query(Criteria.where("_id").in("a1","a2","a3"));
		List<UserDto> list=mongoTemp.find(query, UserDto.class);
		*/
	   
	    Query query = new Query();
	    
/*	    query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));*/
/*	    Query query2=new Query(Criteria.where("artlist").in(keyWord));*/
	    
	    
	    
	    query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.ASC, "_id") }));
	    
	   
	    
	    
	    
	    List<RealtimeDto> list = this.mongoTemp.find(query, RealtimeDto.class);

	    
	    
	    
	    return list;
	   
		
	}
	
/*	
	public UserDto getyearsonglist(String sunwhiyear)
	{
		Query query=new Query(Criteria.where("1964_10").is(sunwhiyear));
		return mongoTemp.findOne(query, UserDto.class);
	}*/

/*	public UserDto getSearchName(String name)
	{
		Query query=new Query(Criteria.where("title").is(title));
		return mongoTemp.findOne(query, UserDto.class);
	}
	*/


}
