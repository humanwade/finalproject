package com.example.service;

import java.util.List;

import com.example.domain.UserVO;
import com.example.domain.WeightVO;

public interface WeightService {
	public void insertWeight(WeightVO weight);
	public WeightVO todayWeight(String email);
	public void updateWeight(WeightVO todayweight);
	public List<WeightVO> getWeights(String email);
}
