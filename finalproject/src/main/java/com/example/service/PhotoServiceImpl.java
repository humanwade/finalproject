package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.UserPhotoDAO;
import com.example.domain.PhotosVO;
import com.example.domain.UserPhotoVO;
import com.example.domain.UserVO;

//**
@Service
public class PhotoServiceImpl implements PhotoService {
	
	@Autowired
	private UserPhotoDAO dao;

	@Override
	public void insertPhoto(PhotosVO vo) {
		dao.insertUserPhoto(vo);
	}

}
