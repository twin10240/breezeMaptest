package com.breezetest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	@RequestMapping("")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("hello", "Hello BreezeR");
		mav.setViewName("index");
		
		return mav;
	}
}
