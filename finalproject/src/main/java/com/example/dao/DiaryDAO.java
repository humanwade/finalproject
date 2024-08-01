package com.example.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.DiaryVO;
import com.example.domain.FoodInfoVO;
import com.example.domain.UserVO;

@Mapper
public interface DiaryDAO {
	public void insertDiary(DiaryVO diary);
	public List<HashMap> getDiary(UserVO user);
	public List<FoodInfoVO> getFoodInfo();
	public List<HashMap> getChartSum(String email);
	public List<HashMap >getReportChart(String year, String month);
}
