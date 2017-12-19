package com.breezetest.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.breezetest.service.MemberService;
import com.breezetest.vo.MemberVo;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/member")
	public ModelAndView main(){
		List<MemberVo> list = new ArrayList<MemberVo>();
		list = memberService.getMember();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("member");
		
		return mav;
	}

}
