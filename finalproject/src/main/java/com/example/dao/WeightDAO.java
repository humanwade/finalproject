package com.example.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.UserVO;
import com.example.domain.WeightVO;

@Mapper
public interface WeightDAO {
	public void insertWeight(WeightVO weight);
	//public WeightVO currentWeight(UserVO user);
}
