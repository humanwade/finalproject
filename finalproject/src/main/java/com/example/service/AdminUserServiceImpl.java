package com.example.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	// 관리자 차트
	public List<UserVO> insertchart(UserVO vo) {
		System.out.println("차트 서비스 호출");
		return dao.insertchart(vo);
	}
	
	// 관리자 전월대비 차트
	@Override
	public HashMap<String, Object> monthchart(int year, int month) {
//		 Map<String, Object> params = new HashMap<>();
//	        params.put("targetYear", year);
//	        params.put("firstMonth", month);
//	        params.put("secondMonth", month);
	        
	        HashMap<String, Object> response = dao.monthchart(year, month);
	        System.out.println("리스폰스" + response);
	        return response;
	}
	
	// 관리자 성별 통계
	public List<UserVO> gendercount(UserVO vo){
		System.out.println("gender호출");
		return dao.gendercount(vo);
	}
	
	
}
