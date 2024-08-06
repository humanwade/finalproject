package com.example.service;

import java.util.List;

import com.example.domain.WorkoutVO;

public interface WorkoutService {
	List<WorkoutVO> getWorkoutList(Integer start);
	public List<WorkoutVO> mainworkout();

}
