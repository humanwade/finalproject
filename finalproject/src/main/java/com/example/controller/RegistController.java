package com.example.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.UserVO;
import com.example.domain.WeightVO;
import com.example.service.UserService;
import com.example.service.WeightService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/regist")
public class RegistController {

	@Autowired
	UserService userservice;
	@Autowired
	WeightService weightservice;
	
	@RequestMapping("/start")
	public String home() {
		return "/regist/regist_start";
	}
	@RequestMapping("/goal")
	public String goal() {
		return "/regist/regist_goal";
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
	
	
	
	//회원가입페이지
	@RequestMapping("/enroll")
	public String enroll() {
		return "regist/enroll";
	}
	
	//이메일 중복검사
	@ResponseBody
	@RequestMapping("/emailDupleCheck")
	public String emailDupleCheck(String email) {
		//유저 정보 가져오기
		UserVO user = userservice.getUser(email);
		if(user == null) 
			return "success";
		else return "fail";
	}
	
	//회원가입
	@Transactional
	@RequestMapping("/saveUser")
	public String saveUser(UserVO user, HttpSession sess, WeightVO weight) {
		System.out.println(user);
		userservice.insertUser(user);
		System.out.println(weight);
		weightservice.insertWeight(weight);
		return "redirect:login";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "regist/login";
	}
	
	@ResponseBody
	@RequestMapping("/loginCheck")
	public String loginCheck(UserVO login, HttpSession sess) {
		System.out.println("로그인검사호출");
		HashMap user = userservice.getUser_curWeight(login);
		if(user!=null) {
			sess.setAttribute("user", user);
			return "success";
		}
		else return "fail";
		
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
