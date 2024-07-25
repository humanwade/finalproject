package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.UserVO;
import com.example.service.UserService;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	@Autowired
	UserService userservice;
	
	@RequestMapping
	public String home(Model m) {
		
		UserVO user = userservice.getUser();
		System.out.println(user);
		m.addAttribute("user", user);
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
