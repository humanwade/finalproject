package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/diary")
public class DiaryController {

	@RequestMapping
	public String home() {
		return "/diary/diary1";
	}
	
	@RequestMapping("report")
	public String report() {
		return "/diary/report";
	}
}
