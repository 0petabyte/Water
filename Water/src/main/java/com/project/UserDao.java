package com.project;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


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

	public List<UserDto> findList(String keyWord, String keyField, String yearchose, String sunwhiyear, 
			String rankchose, String sunwhi, String jangre, String jangrechose, String nowurl)
	{
		//방법 1 : 전체데이타를 목록으로 얻고자 할경우
		//List<UserDto> list=mongoTemp.findAll(UserDto.class,"musicdata");


		//방법2 - 조건에 의한 목록을 얻고자 할경우
		/*		Query query=new Query(Criteria.where("_id").in("a1","a2","a3"));
		List<UserDto> list=mongoTemp.find(query, UserDto.class);
		 */


		sunwhiyear="sunwhiyear";
		sunwhi="sunwhi";
		jangre="jangre";



		Query query = new Query();

		/*	    query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));*/
		/*	    Query query2=new Query(Criteria.where("artlist").in(keyWord));*/


		if (keyWord == null && rankchose == null && jangrechose == null && jangrechose == null )
			query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));




		else
			query=new Query(Criteria.where(keyField).regex(keyWord,"i"));

		if (yearchose != null && rankchose == null && jangrechose == null)
			query=new Query(new Criteria().andOperator(		
					Criteria.where(sunwhiyear).is(yearchose).regex(yearchose.replaceAll(",", "|"),"i")
					));

		System.out.println(yearchose);

		if (rankchose != null && jangrechose == null && yearchose == null) {

			try {
			int a =  Integer.parseInt(rankchose);
			
			String b = "1";
			if (a <= 10) {

				System.out.println("a는"+a);
				query=new Query(new Criteria().andOperator(		
						Criteria.where(sunwhi).is(rankchose.replaceAll(",", "|"))
						));	}


			
			else {
				System.out.println("b는"+a);
				query=new Query(new Criteria().andOperator(		
						Criteria.where(sunwhi).is(rankchose).regex(rankchose.replaceAll(",", "|"))
						));
			}
			}catch(NumberFormatException e){
				if (rankchose != null)
				query=new Query(new Criteria().andOperator(		
						Criteria.where(sunwhi).is(rankchose).regex(rankchose.replaceAll(",", "|"))
						));
			}
			

			

		}

		System.out.println(rankchose);

		if (jangrechose != null && rankchose == null && yearchose == null )
			query=new Query(new Criteria().andOperator(		
					Criteria.where(jangre).is(jangrechose).regex(jangrechose.replaceAll(",", "|"),"i")
					));

		System.out.println(jangrechose);

		if (jangrechose != null && rankchose != null && yearchose == null)
			query=new Query(new Criteria().andOperator(		
					Criteria.where(jangre).is(jangrechose).regex(jangrechose.replaceAll(",", "|"),"i"),
					Criteria.where(sunwhi).is(rankchose.replaceAll(",", "|"))));

		if (jangrechose != null && rankchose != null && yearchose != null)
			query=new Query(new Criteria().andOperator(		
					Criteria.where(jangre).is(jangrechose).regex(jangrechose.replaceAll(",", "|"),"i"),
					Criteria.where(sunwhi).is(rankchose.replaceAll(",", "|")),
					Criteria.where(sunwhiyear).is(yearchose).regex(yearchose.replaceAll(",", "|"),"i")));

		if (jangrechose != null && yearchose != null)
			query=new Query(new Criteria().andOperator(		
					Criteria.where(jangre).is(jangrechose).regex(jangrechose.replaceAll(",", "|"),"i"),
					Criteria.where(sunwhiyear).is(yearchose).regex(yearchose.replaceAll(",", "|"),"i")));








		/*	    if (yearchose == null)
	    	query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));

	    else
	    	query=new Query(Criteria.where(sunwhiyear).regex(yearchose,"i"));*/



		List<UserDto> list = this.mongoTemp.find(query, UserDto.class);


		if (list==null)
			System.out.println("null입니다");

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
