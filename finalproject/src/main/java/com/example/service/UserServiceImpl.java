package com.example.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.UserDAO;
import com.example.domain.PhotosVO;
import com.example.domain.UserVO;

//**
@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO dao;

	@Override
	public HashMap getUser_curWeight() {
		return dao.getUser_curWeight();
	}

	@Override
	public UserVO getUser() {
		return dao.getUser();
	}

	@Override
	public void updateProfile(long profileid) {
		dao.updateProfile(profileid);
	}

	@Override
	public void insertUser(UserVO user) {
		dao.insertUser(user);
		
	}
	
	

}
