package com.project.err;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;


@Repository
public class ErrDao extends SqlSessionDaoSupport{
	public List<ErrDto> getErrlist()
	{
		return getSqlSession().selectList("error.selectAllOferror");
	}
	
	public void insertBoard(ErrDto dto)
	{
		getSqlSession().insert("error.insertBoard", dto);
	}
	
	public int getTotalCount() {
		int n=getSqlSession().selectOne("error.totalcountoferror");
		return n;
	}
	public List<ErrDto> getList(int start, int end) {
		HashMap<String, Integer> map=new HashMap<String, Integer>();
		map.put("start", start);
		map.put("end",end);
		
		return getSqlSession().selectList("error.selectpagingoferror", map);
	}
	
	public ErrDto getData(int e_num) {
		return getSqlSession().selectOne("error.selectOneoferror",e_num);
	}
	
	public void deletedata(int e_num, int pageNum) {
		getSqlSession().delete("error.delete", e_num);
	}
	
	public ErrDto updateForm(int e_num) {
		return getSqlSession().selectOne("error.updateForm",e_num);
	}

	public void update(ErrDto dto) {
		getSqlSession().update("error.update",dto);
		
	}
	//댓글
	public void insertAnswer(AnswerDto adto) {
		getSqlSession().insert("insertanswer",adto);
	}
	public List<AnswerDto> getAnswers(int e_num) {
		return getSqlSession().selectList("answerlistByNum",e_num);
	}
}
