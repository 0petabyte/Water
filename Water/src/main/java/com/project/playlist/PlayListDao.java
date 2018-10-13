package com.project.playlist;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class PlayListDao extends SqlSessionDaoSupport{
	public void insertplist(PlayListDto dto) {
		getSqlSession().insert("playlist.insertplist", dto);
	}
}
