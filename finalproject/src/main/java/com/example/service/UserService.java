package com.example.service;

import java.util.HashMap;

import com.example.domain.PhotosVO;
import com.example.domain.UserVO;

public interface UserService {
	
	public HashMap getUser_curWeight();
	public UserVO getUser();
	public void updateProfile(long profileid);
}
