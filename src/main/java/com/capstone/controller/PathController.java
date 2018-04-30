package com.capstone.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PathController {
	
	/**
	 *
	 * @author yoonah park
	 * @date 2018. 04. 30.
	 */
	@RequestMapping("/")
	public String basePath(){
		return "/index";
	}

}
