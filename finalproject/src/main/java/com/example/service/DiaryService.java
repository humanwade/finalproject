package com.example.service;

import java.util.HashMap;
import java.util.List;

import com.example.domain.DiaryVO;
import com.example.domain.FoodInfoVO;
import com.example.domain.UserVO;

public interface DiaryService {
	public void insertDiary(DiaryVO diary);
	public List<HashMap> getDiary(UserVO user);
	public List<FoodInfoVO> getFoodInfo();
}
