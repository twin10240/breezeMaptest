package com.breezetest.controller.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.breezetest.dto.JSONResult;
import com.breezetest.service.PostService;
import com.breezetest.vo.PostVo;

@Controller
@RequestMapping("/api/search")
public class LocationController {

	@Autowired
	private PostService postService;
	
	@ResponseBody
	@RequestMapping("/nearby")
	public JSONResult search(@RequestParam(value="location", required=true, defaultValue="null") String location) {
		List<PostVo> info = postService.getPost(location);
		
		return JSONResult.success(info);
	}
}
