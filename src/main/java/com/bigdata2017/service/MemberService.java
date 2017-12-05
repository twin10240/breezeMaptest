package com.bigdata2017.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.breezetest.repository.MemberDao;
import com.breezetest.vo.MemberVo;

@Service
public class MemberService {
	
	@Autowired
	private MemberDao memberDao;
	
	public List<MemberVo> getMember(){
		return memberDao.allMember();
	}

}
