package com.breezetest.repository;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.breezetest.vo.PostVo;

@Repository
public class PostDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	public int insert() {
		return sqlSession.insert("post.insert");
	}
	
	public List<PostVo> getInfo(String location) {
		List<PostVo> info = new ArrayList<PostVo>();
		info = sqlSession.selectList("post.getInfo", location);
		
		return info; 
	}
}
