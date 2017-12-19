package com.breezetest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.breezetest.repository.MapDao;
import com.breezetest.vo.MapVo;

@Service
public class MapService {
	
	@Autowired
	private MapDao mapDao;
	
	public List<MapVo> getData(){
		return mapDao.selectList();
	}

}
