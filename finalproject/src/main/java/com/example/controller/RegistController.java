package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/regist")
public class RegistController {

	@RequestMapping("/start")
	public String home() {
		return "/regist/regist_start";
	}
	@RequestMapping("/goal")
	public String goal() {
		return "/regist/regist_goal";
	}
	@RequestMapping("/login")
	public String login() {
		return "regist/login";
	}
	
	@RequestMapping("/activity")
	public String activity() {
		return "regist/regist_activity";
	}
	
	@RequestMapping("/gender")
	public String gender() {
		return "regist/regist_gender";
	}
	
	@RequestMapping("/height")
	public String height() {
		return "regist/regist_height";
	}
	
	@RequestMapping("/birth")
	public String birth() {
		return "regist/regist_birth";
	}
	
	@RequestMapping("/end")
	public String end() {
		return "regist/regist_end";
	}
	
	@RequestMapping("/enroll")
	public String enroll() {
		return "regist/enroll";
	}
	
	@RequestMapping("/reset")
	public String reset() {
		return "regist/pass_reset";
	}
	
	@RequestMapping("/resetchk")
	public String resetchk() {
		return "regist/pass_resetchk";
	}
	
	@RequestMapping("/password")
	public String password() {
		return "regist/new_password";
	}
}
