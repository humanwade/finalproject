package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.WorkoutVO;
import com.example.service.WorkoutService;

@Controller
@RequestMapping("/exercise")
public class ExerciseController {

	@Autowired
	WorkoutService service;
	
	@RequestMapping
	public String home(Model m) {
		List<WorkoutVO> list = service.getWorkoutList(0);
		System.out.println(list);
		m.addAttribute("list", list);
		return "/exercise/exercise";
	}
	
	@RequestMapping("/detail")
	public String detail() {
		return "/exercise/detail_exercise";
	}
}
