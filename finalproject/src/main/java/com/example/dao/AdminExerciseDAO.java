package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.WorkoutVO;

@Mapper
public interface AdminExerciseDAO {
	
	// 운동리스트 불러오기
	public List<WorkoutVO> getWorkoutList(WorkoutVO vo);
	
	// 관리자 운동 삭제하기
	public void deleteExercise(String workid);
}