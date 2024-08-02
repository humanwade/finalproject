package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.UserVO;
import com.example.domain.WeightVO;
import com.example.service.EmailService;
import com.example.service.UserService;
import com.example.service.WeightService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/regist")
public class RegistController {

	@Autowired
	private UserService userservice;
	@Autowired
	private WeightService weightservice;
	@Autowired
	private EmailService emailservice;
	@Autowired
    private JavaMailSender mailSender;
	
	@RequestMapping("/start")
	public String home(HttpSession sess) {
		sess.removeAttribute("user");
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
	public String login(HttpSession sess) {
		if(sess.getAttribute("user")!=null)
			return "redirect:/index";
		return "regist/login";
	}
	
	@ResponseBody
	@RequestMapping("/loginCheck")
	public String loginCheck(UserVO login, HttpSession sess) {
		System.out.println("로그인검사호출");
		UserVO user = userservice.loginCheck(login);
		if(user!=null) {
			sess.setAttribute("user", user.getEmail());
			return "success";
		}
		else return "fail";
		
	}
	
	// 비밀번호 찾기 페이지
	@RequestMapping("/reset")
	public String reset() {
		return "regist/pass_reset";
	}
	
	// 이메일 확인
	@ResponseBody
	@RequestMapping("/emailcheck")
	public String emailcheck(String email, HttpSession sess) {
		UserVO user = userservice.getUser(email);
		
		if(user != null) {
			String subject = "비밀번호 변경시 필요한 인증번호입니다.";
			
			// 인증번호 생성
			String verify = emailservice.generateVerificationCode();
			
	        // 이메일 메시지 설정
			SimpleMailMessage message = new SimpleMailMessage();
	        message.setTo(email);
	        message.setSubject(subject);
	        message.setText(verify);
	        mailSender.send(message);
			
			sess.setAttribute("verificationCode", verify);
			sess.setAttribute("checkemail", email);
			return "확인";
		}
			
		else return "실패";
	}
	
	@RequestMapping("/resetchk")
	public String resetchk(HttpSession sess) {
		if(sess.getAttribute("checkemail") == null)
			return "redirect:/regist/login";
		return "regist/pass_resetchk";
	}
	
	@RequestMapping("/password")
	public String password(HttpSession sess) {
		if(sess.getAttribute("checkemail") == null)
			return "redirect:/regist/login";
		return "regist/new_password";
	}
	
	// 비밀번호 변경
	@ResponseBody
	@RequestMapping("newpassword")
	public String newpassword(UserVO user, HttpSession sess) {
		if(sess.getAttribute("checkemail") == null)
			return "세션만료";
		String email = (String)sess.getAttribute("email");
		user.setEmail(email);
		userservice.passwordchange(user);
		return "변경성공";
	}
}
