package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	
	@RequestMapping
	public String home() {
		return "/mypage/mypage";
	}
	
	@RequestMapping("/info")
	public String info() {
		return "/mypage/info_change";
	}
	
	
	@RequestMapping("/change")
	public String change() {
		return "/mypage/pass_change";
	}
	
	@RequestMapping("/change2")
	public String change2() {
		return "/mypage/pass_change2";
	}
	
}
