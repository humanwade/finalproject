package com.example.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

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
	
	// 관리자 차트
	public List<UserVO> insertchart(UserVO vo);
	
	// 관리자 전월 대비 차트
//	HashMap monthchart(Map<String, Object> params);
	HashMap<String, Object> monthchart(int year, int month);
	
	//관리자 성별 통계
	public List<UserVO> gendercount(UserVO vo);
	
}

