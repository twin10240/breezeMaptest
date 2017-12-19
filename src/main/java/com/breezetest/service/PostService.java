package com.breezetest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.breezetest.repository.PostDao;
import com.breezetest.vo.PostVo;

@Service
public class PostService {

	@Autowired
	private PostDao postDao;
	
	public boolean uploadMessage() {
		return postDao.insert() == 1;
	}
	
	public List<PostVo> getPost(String location) {
		return postDao.getInfo(location);
	}
}
