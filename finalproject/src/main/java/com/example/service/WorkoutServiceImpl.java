package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.WorkoutDAO;
import com.example.domain.WorkcateVO;
import com.example.domain.WorkoutVO;

//**
@Service
public class WorkoutServiceImpl implements WorkoutService {
	
	@Autowired
	private WorkoutDAO dao;

	@Override
	public List<WorkoutVO> getWorkoutList(Integer start) {
		return dao.getWorkoutList(start);
	}

	@Override
	public List<WorkoutVO> mainworkout() {
		return dao.mainworkout();
	}

	@Override
	public void workVideoDelete(String videoid) {
		dao.workVideoDelete(videoid);
	}

	@Override
	public List<WorkcateVO> workcate() {
		return dao.workcate();
	}

	@Override
	public void insertWorkDiary() {
		dao.insertWorkDiary();
	}

}
