package com.project.playlist;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class PlayListDao extends SqlSessionDaoSupport{
	public void insertplist(PlayListDto dto) {
		getSqlSession().insert("playlist.insertplist", dto);
	}
	
	/*public List<PlayListDto> selectplist(String user) {
		List<PlayListDto> plist=getSqlSession().selectList("selectplist",user);
		return plist;
	}*/
}
