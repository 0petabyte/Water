package com.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

@Repository
public class QuestionDao {
	int qyear=0;
	int q2year=0;
	int q3year=0;
	@Autowired
	private MongoTemplate mongoTemp; 
	
	public void dropCollection()
	{
		mongoTemp.dropCollection(QuestionDao.class);
	}

	public List<QuestionDto> findList(String keyWord, String keyField, String yearchose, String sunwhiyear, 
			String rankchose, String sunwhi, String jangre, String jangrechose, String nowurl, String yearkeyword, String jangkeyword
			,String yearkeyword2,String yearkeyword3)
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


		
		System.out.println(yearkeyword);
		System.out.println(jangkeyword);
		
		if (yearkeyword == null && jangkeyword == null)
			query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));


		if (yearkeyword!= null && jangkeyword == null) {
			qyear=Integer.parseInt(yearkeyword)+13;
			q2year=Integer.parseInt(yearkeyword)+14;
			q3year=Integer.parseInt(yearkeyword)+15;
			yearkeyword2=Integer.toString(q2year);
			yearkeyword3=Integer.toString(q3year);
			System.out.println("2:"+yearkeyword2);
			System.out.println(qyear);
			yearkeyword=Integer.toString(qyear);
			query=new Query(new Criteria().orOperator(		
					/*Criteria.where(sunwhiyear).is(yearkeyword).regex(yearkeyword.replaceAll(",", "|"),"i"),*/
					Criteria.where(sunwhiyear).is(yearkeyword).regex(yearkeyword.replaceAll(",", "|"),"i"),
					Criteria.where(sunwhiyear).is(yearkeyword2).regex(yearkeyword2.replaceAll(",", "|"),"i"),
					Criteria.where(sunwhiyear).is(yearkeyword3).regex(yearkeyword3.replaceAll(",", "|"),"i")
					
					
					));
			System.out.println(yearkeyword);
		}
		
		System.out.println(jangkeyword);
		if (yearkeyword== null && jangkeyword != null)
			if (yearkeyword== null && jangkeyword != null)
				try {
				query=new Query(new Criteria().andOperator(		
						Criteria.where(jangre).is(jangkeyword).regex(jangkeyword.replaceAll(",", "|"),"i")
						));
				}catch(NumberFormatException e) {
					if (yearkeyword == null)
						query=new Query(new Criteria().andOperator(		
								Criteria.where(jangre).is(jangkeyword).regex(jangkeyword.replaceAll(",", "|"),"i")
								));
				}
		if (yearkeyword!= null && jangkeyword != null) {
			System.out.println(yearkeyword);
			try {
			qyear=Integer.parseInt(yearkeyword)+13;
			/*q2year=Integer.parseInt(yearkeyword)+14;
			q3year=Integer.parseInt(yearkeyword)+15;
			yearkeyword2=Integer.toString(q2year);
			yearkeyword3=Integer.toString(q3year);
			System.out.println(qyear);*/
			yearkeyword=Integer.toString(qyear);
			query=new Query(new Criteria().andOperator(		
					Criteria.where(sunwhiyear).is(yearkeyword).regex(yearkeyword.replaceAll(",", "|"),"i"),
					/*Criteria.where(sunwhiyear).is(yearkeyword2).regex(yearkeyword2.replaceAll(",", "|"),"i"),
					Criteria.where(sunwhiyear).is(yearkeyword3).regex(yearkeyword3.replaceAll(",", "|"),"i"),*/
					Criteria.where(jangre).is(jangkeyword).regex(jangkeyword.replaceAll(",", "|"),"i")
					));}catch(NumberFormatException e) {
						if (yearkeyword!= null && jangkeyword != null)
							query=new Query(new Criteria().andOperator(		
									Criteria.where(sunwhiyear).is(yearkeyword).regex(yearkeyword.replaceAll(",", "|"),"i"),
									/*Criteria.where(sunwhiyear).is(yearkeyword2).regex(yearkeyword2.replaceAll(",", "|"),"i"),
									Criteria.where(sunwhiyear).is(yearkeyword3).regex(yearkeyword3.replaceAll(",", "|"),"i"),*/
									Criteria.where(jangre).is(jangkeyword).regex(jangkeyword.replaceAll(",", "|"),"i")
									));
					}
			System.out.println(yearkeyword);
		}

		/*

		if (keyWord == null && rankchose == null && jangrechose == null && jangrechose == null )
			query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));

/*


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


*/





		/*	    if (yearchose == null)
	    	query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));

	    else
	    	query=new Query(Criteria.where(sunwhiyear).regex(yearchose,"i"));*/



		List<QuestionDto> list = this.mongoTemp.find(query, QuestionDto.class);


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


