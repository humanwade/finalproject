package com.example.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.PhotosVO;

@Mapper
public interface UserPhotoDAO {
	public void insertUserPhoto(PhotosVO vo);
	public void updateUserPhoto(PhotosVO vo);
}
