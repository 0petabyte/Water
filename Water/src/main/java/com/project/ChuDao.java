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
public class ChuDao {

	@Autowired
	private MongoTemplate mongoTemp;
	
	public void dropCollection()
	{
		mongoTemp.dropCollection(UserDao.class);
	}
		
	public List<ChuCheonBBSDto> findcList()
	{	
		//諛⑸쾿1 :?꾩껜 ?곗씠?瑜?遺덈윭?ㅻ뒗 踰?
		//List<UserDto> list = mongoTemp.findAll(UserDto.class,"dto");
		//諛⑸쾿2
		//Query query=new Query(Criteria.where("_id").in("a1","a2","a3"));
		//List<UserDto> list=mongoTemp.find(query, UserDto.class);
		
		List<ChuCheonBBSDto> clist = mongoTemp.findAll(ChuCheonBBSDto.class,"chucheonbbs");
		
		return clist;
	}
	
	//dto ?쒓컻 ??μ떆
	public void cinsert(ChuCheonBBSDto cdto)
	{
		mongoTemp.insert(cdto);
	}
	
	
	//?곗씠? ?쒓컻 諛섑솚諛쏅뒗 硫붿꽌??
	public UserDto getSearchMusicid(String musicid)
	{
		Query query=new Query(Criteria.where("musicid").is(musicid));
		return mongoTemp.findOne(query, UserDto.class);
	}
	
}
