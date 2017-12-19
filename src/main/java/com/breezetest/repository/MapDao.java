package com.breezetest.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.breezetest.vo.MapVo;

@Repository
public class MapDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	public List<MapVo> selectList(){
		return sqlsession.selectList("map.select");
	}

}
