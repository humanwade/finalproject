package com.example.service;

import java.util.List;

import com.example.domain.WorkoutVO;

public interface AdminExerciseService {
	
	public List<WorkoutVO> getWorkoutList(WorkoutVO vo);
	
	public void deleteExercise(String workid);

}
