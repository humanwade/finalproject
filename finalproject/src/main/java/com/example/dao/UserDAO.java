package com.example.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.UserVO;

@Mapper
public interface UserDAO {
	
	public UserVO getUser();
}
