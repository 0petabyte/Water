package com.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

@Repository
public class FameDao {
	
	@Autowired
	private MongoTemplate mongoTemp;
	
	public void dropCollection() {
		mongoTemp.dropCollection(FameDao.class);
	}
	
	public List<FameDto> findList() {
		
		Query query = new Query();
		
		/*query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.ASC, "_id") }));
	    
	    List<FameDto> list = this.mongoTemp.find(query, FameDto.class);
*/
		query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.ASC, "sunwhiyear") }));
		
		List<FameDto> list = this.mongoTemp.find(query, FameDto.class);
		
		return list;
	}
}
