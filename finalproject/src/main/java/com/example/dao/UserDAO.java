package com.example.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.PhotosVO;
import com.example.domain.UserVO;

@Mapper
public interface UserDAO {
	
	public HashMap getUser_curWeight();
	public UserVO getUser();
	public void updateProfile(long profileid);
	public void insertUser(UserVO user);
}
