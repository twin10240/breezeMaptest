package com.breezetest.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.breezetest.service.MapService;
import com.breezetest.vo.MapVo;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class MapController {
	@Autowired
	private MapService mapService;
	
	@RequestMapping("/map")
	public ModelAndView mapTest() {
		ObjectMapper mapper = null;
		String json = null;
		String jsonString = null;
		List<MapVo> list = new ArrayList<MapVo>();
		
		Map<String, Object> test = new HashMap<String, Object>(); 
		
		try {
			mapper = new ObjectMapper();
			list = mapService.getData();
			json = mapper.writeValueAsString(list);
			jsonString = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(list);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
		ModelAndView mav = new ModelAndView();
//		mav.addObject("json", json);
//		mav.addObject("jsonString", jsonString);
		mav.addObject("list", list);
		mav.setViewName("mapTest");
		
		return mav;
	}
	
	@RequestMapping("/direction")
	public String directionTest() {
		return "directionTest";
	}
	
	@RequestMapping("/place")
	public String placesTest() {
		return "placeTest";
	}
	
	@RequestMapping("/test")
	public String testPage() {
		return "test";
	}
	
	@RequestMapping("/test2")
	public String testPage2() {
		return "test2";
	}
}
