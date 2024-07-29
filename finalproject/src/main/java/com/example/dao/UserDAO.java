package com.example.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.UserVO;

@Mapper
public interface UserDAO {
	
	public HashMap getUser_curWeight(UserVO login);
	public UserVO getUser(String email);
	public UserVO loginCheck(UserVO user);
	public void updateProfile(HashMap user);
	public void insertUser(UserVO user);
}
