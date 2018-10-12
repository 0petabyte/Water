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
		
		
		List<ChuCheonBBSDto> clist = mongoTemp.findAll(ChuCheonBBSDto.class,"chucheonbbs");
		
		return clist;
	}
	
	public List<ChuCheonDatDto> finddatList()
	{
		List<ChuCheonDatDto> datlist = mongoTemp.findAll(ChuCheonDatDto.class,"chucheondat");
		
		return datlist;
	}
	
	
	public void cinsert(ChuCheonBBSDto cdto)
	{
		System.out.println("call:"+cdto.getTitle());
		
		if(cdto.getTitle()==null||cdto.getTitle().equals("")||cdto.getTitle().length()<1){
			return;
		}else{
			
		mongoTemp.insert(cdto);
		}
	}
	
	public void reinsert(ChuCheonDatDto datdto)
	{
		mongoTemp.insert(datdto);
	}
	
	//삭제 메서드
	public void deletedat(String _id)
	{
		Query query=new Query(Criteria.where("_id").is(_id));
		mongoTemp.remove(query,ChuCheonDatDto.class);
	}
	
	
	public UserDto getSearchMusicid(String musicid)
	{
		Query query=new Query(Criteria.where("musicid").is(musicid));
		return mongoTemp.findOne(query, UserDto.class);
	}
	
	public ChuCheonBBSDto getSearch_id(String _id)
	{
		Query query=new Query(Criteria.where("_id").is(_id));
		return mongoTemp.findOne(query, ChuCheonBBSDto.class);
	}
	
}
