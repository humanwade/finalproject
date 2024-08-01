package com.example.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.DiaryDAO;
import com.example.domain.DiaryVO;
import com.example.domain.FoodInfoVO;
import com.example.domain.UserVO;

//**
@Service
public class DiaryServiceImpl implements DiaryService {

	@Autowired
	private DiaryDAO dao;

	@Override
	public void insertDiary(DiaryVO diary) {
		dao.insertDiary(diary);
	}

	@Override
	public List<HashMap> getDiary(UserVO user) {
		return dao.getDiary(user);
	}

	@Override
	public List<FoodInfoVO> getFoodInfo() {
		return dao.getFoodInfo();
	}

	@Override
	public List<HashMap> getChartSum(String email) {
		return dao.getChartSum(email);
	}
	
}
