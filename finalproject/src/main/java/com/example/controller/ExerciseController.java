package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/exercise")
public class ExerciseController {

	@RequestMapping
	public String home() {
		return "/exercise/exercise";
	}
	
	@RequestMapping("/detail")
	public String detail() {
		return "/exercise/detail_exercise";
	}
}
