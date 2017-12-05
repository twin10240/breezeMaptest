package com.breezetest.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.breezetest.vo.MemberVo;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<MemberVo> allMember() {
		return sqlSession.selectList("select");
		
	}

}
