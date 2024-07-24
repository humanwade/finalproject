package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.UserVO;

/*
 DAO와 Mapper 연결
	[1] mapper 에서
		<mapper namespace="com.example.dao.BoardDAO">
	
	[2] DAO 클래스에서
		함수명과 mapper에서의 ID값 동일
*/
@Mapper
public interface AdminUserDAO {
	
	// 관리자 회원리스트 불러오기	
	public List<UserVO> getMemberList(UserVO vo);
	
	// 관리자 회원 삭제하기
	public void deleteUsers(String[] email);
	
}

