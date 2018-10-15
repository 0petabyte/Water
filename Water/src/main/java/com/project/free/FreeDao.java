package com.project.free;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;



@Repository
public class FreeDao extends SqlSessionDaoSupport{
	public List<FreeDto> getFreelist()
	{
		return getSqlSession().selectList("free.selectAllOffree");
	}
	public int getTotalCount() {
		int n=getSqlSession().selectOne("free.totalcountoffree");
		return n;
	}
	public void insertBoard(FreeDto dto)
	{
		getSqlSession().insert("free.insertBoard", dto);
	}
	public List<FreeDto> getList(int start, int end) {
		HashMap<String, Integer> map=new HashMap<String, Integer>();
		map.put("start", start);
		map.put("end",end);
		
		return getSqlSession().selectList("free.selectpagingoffree", map);
	}
	public FreeDto getData(int f_num) {
		return getSqlSession().selectOne("free.selectOneoffree",f_num);
	}
	
	public void deletedata(int f_num, int pageNum) {
		getSqlSession().delete("free.delete", f_num);
	}
	
	public FreeDto updateForm(int f_num) {
		return getSqlSession().selectOne("free.updateForm",f_num);
	}

	public void update(FreeDto dto) {
		getSqlSession().update("free.update",dto);
		
	}
	//댓글
	public void insertAnswer(FreeAnswerDto fadto) {
		getSqlSession().insert("free.insertanswer",fadto);
	}
	public List<FreeAnswerDto> getAnswers(int f_num) {
		return getSqlSession().selectList("free.answerlistByNum",f_num);
	}
}
