package com.example.service;

import java.util.List;

import com.example.domain.WorkcateVO;
import com.example.domain.WorkoutVO;

public interface WorkoutService {
	List<WorkoutVO> getWorkoutList(Integer start);
	public List<WorkoutVO> mainworkout();
	public void workVideoDelete(String videoid);
	public List<WorkcateVO> workcate();
	public void insertWorkDiary();

}
