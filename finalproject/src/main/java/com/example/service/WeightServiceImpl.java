package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.WeightDAO;
import com.example.domain.UserVO;
import com.example.domain.WeightVO;

//**
@Service
public class WeightServiceImpl implements WeightService {

	@Autowired
	private WeightDAO dao;
	
	@Override
	public void insertWeight(WeightVO weight) {
		dao.insertWeight(weight);		
	}

	
	@Override public WeightVO todayWeight(String email) { 
		return dao.todayWeight(email);
	}


	@Override
	public void updateWeight(WeightVO todayweight) {
		dao.updateWeight(todayweight);
	}


	@Override
	public List<WeightVO> getWeights(String email) {
		return dao.getWeights(email);
	}
	 
	
}
