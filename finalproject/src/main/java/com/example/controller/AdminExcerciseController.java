package com.example.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.domain.WorkoutVO;
import com.example.service.AdminExerciseService;

@CrossOrigin(origins="http://localhost:3000")
@RestController
public class AdminExcerciseController {
	
	@Autowired
	private AdminExerciseService exerciseService;
	
	// 운동 리스트 불러오기
	@GetMapping("/exercise-management")
	public List<WorkoutVO> getWorkoutList(){
		WorkoutVO vo = new WorkoutVO();
		List<WorkoutVO> result = exerciseService.getWorkoutList(vo);
		//System.out.println("/exercise-management 호출");
		return result;
	}
	
	// 운동 삭세하가
	@ResponseBody
	@DeleteMapping("/exercisedelete")
	public String exercisedelete(String workid) {
		//System.out.println("/exercisedelete 호출");
		exerciseService.deleteExercise(workid);
		return workid+"번 게시글 삭제";
	}
	
	
	
	

}
