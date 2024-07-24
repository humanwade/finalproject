package com.example.service;

import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.AdminUserDAO;
import com.example.domain.UserVO;

//**
@Service
public class AdminUserServiceImpl implements AdminUserService {
	
	//**
	@Autowired
	private AdminUserDAO dao;
	
	// 관리자 회원리스트 불러오기	
	public List<UserVO> getMemberList(UserVO vo){
		return dao.getMemberList(vo);
	}
	
	// 관리자 회원 삭제하기
	public void deleteUsers(String[] email) {
		System.out.println("서비스 호출");
		dao.deleteUsers(email);
	}
	
}
