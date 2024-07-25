package com.example.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.domain.UserVO;
import com.example.service.AdminUserService;

@CrossOrigin(origins="http://localhost:3000")
@RestController // @Controller + @ResponseBody
public class AdminUserController {
	
	@Autowired
	private AdminUserService userService;
	
	// 관리자 회원리스트 불러오기	
	@GetMapping("/member-management")
	public List<UserVO> getMemberList() {
		UserVO vo = new UserVO();
		List<UserVO> result = userService.getMemberList(vo);
		//System.out.println("[getMemberList]" + result);
		return result;
	}
	
	// 관리자 회원 삭제하기
	@ResponseBody
	@DeleteMapping("/usersdelete")
	public String usersdelete(String email) {
		System.out.println(email+"번 회원");
		String[] a = email.split(",");
		System.out.println(a);
		userService.deleteUsers(a);
		return email+"의 회원 삭제";
	}
	
}
