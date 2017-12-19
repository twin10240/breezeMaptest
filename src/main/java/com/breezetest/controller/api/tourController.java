package com.breezetest.controller.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.breezetest.dto.JSONResult;
import com.breezetest.service.MapService;
import com.breezetest.vo.MapVo;

@Controller
@RequestMapping("/api/tour")
public class tourController {

	@Autowired
	private MapService mapService;
	
	@ResponseBody
	@RequestMapping("/location")
	public JSONResult getData() {
		List<MapVo> info = mapService.getData();
		
		return JSONResult.success(info);
	}
}
