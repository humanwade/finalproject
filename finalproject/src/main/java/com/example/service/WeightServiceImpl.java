package com.example.service;

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

	/*
	 * @Override public WeightVO currentWeight(UserVO user) { return
	 * dao.currentWeight(user); }
	 */
	
}
