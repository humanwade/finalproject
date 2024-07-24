package com.example.service;

import java.util.List;



import com.example.domain.UserVO;

public interface AdminUserService {
	
	// 관리자 회원리스트 불러오기	
	List<UserVO> getMemberList(UserVO vo);
	
	// 관리자 회원 삭제하기
	void deleteUsers(String[] email);
}
