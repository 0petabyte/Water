package com.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

@Repository
public class FameDao {
	
	@Autowired
	private MongoTemplate mongoTemp;
	
	public void dropCollection() {
		mongoTemp.dropCollection(FameDao.class);
	}
	
	public List<FameDto> findList1() {
		Query query = new Query();
		query=new Query(Criteria.where("sunwhiyear").regex("201"));
		List<FameDto> list1 = this.mongoTemp.find(query, FameDto.class);
		return list1;
	}
	public List<FameDto> findList2() {
		Query query = new Query();
		query=new Query(Criteria.where("sunwhiyear").regex("200"));
		List<FameDto> list2 = this.mongoTemp.find(query, FameDto.class);
		return list2;
	}
	public List<FameDto> findList3() {
		Query query = new Query();
		query=new Query(Criteria.where("sunwhiyear").regex("199"));
		List<FameDto> list3 = this.mongoTemp.find(query, FameDto.class);
		return list3;
	}
	public List<FameDto> findList4() {
		Query query = new Query();
		query=new Query(Criteria.where("sunwhiyear").regex("198"));
		List<FameDto> list4 = this.mongoTemp.find(query, FameDto.class);
		return list4;
	}
	public List<FameDto> findList5() {
		Query query = new Query();
		query=new Query(Criteria.where("sunwhiyear").regex("197"));
		List<FameDto> list5 = this.mongoTemp.find(query, FameDto.class);
		return list5;
	}
	public List<FameDto> findList6() {
		Query query = new Query();
		query=new Query(Criteria.where("sunwhiyear").regex("196"));
		List<FameDto> list6 = this.mongoTemp.find(query, FameDto.class);
		return list6;
	}
}
