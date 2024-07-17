package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.dao.RecipeDAO;
import com.example.domain.RecipeVO;
import com.example.service.RecipeService;

@Controller
public class HomeController {

//	@RequestMapping("/{value}")
//	public String index(@PathVariable("value") String value) {
//		System.out.println(value+"호출");
//		return value;
//	}
	
	@RequestMapping("/index")
	public void index() {
		
	}
	
//	@RequestMapping("/diery1")
//	public String diery1() {
//		return "diery/diery1";
//	}
	
	
//    @RequestMapping("/{folder}/{file}")
//    public String handleRequest(@PathVariable("folder") String folder, @PathVariable("file") String file) {
//        return folder + "/" + file;  // 예: /exercise/exercise
//    }

	
}
