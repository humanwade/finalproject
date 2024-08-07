package com.example.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.AdminExerciseDAO;
import com.example.domain.WorkoutVO;

@Service
public class AdminExerciseServiceImpl implements AdminExerciseService{
	
	@Autowired
	private AdminExerciseDAO dao;
	
	public void insertexercise(WorkoutVO vo) {
		dao.insertexercise(vo);
	}

	public List<WorkoutVO> getWorkoutList(WorkoutVO vo){
		//System.out.println("운동서비스 호출");
		return dao.getWorkoutList(vo);
	}
	
	public void deleteExercise(String workid) {
		//System.out.println("운동삭제서비스 호출");
		dao.deleteExercise(workid);
	}
	
	public void exerciseupdate(WorkoutVO vo) {
		System.out.println("운동 수정서비스 호출");
		dao.exerciseupdate(vo);
	}

	
}
