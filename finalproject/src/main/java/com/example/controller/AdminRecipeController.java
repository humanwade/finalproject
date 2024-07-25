package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.domain.RecipeVO;
import com.example.service.AdminRecipeService;

@CrossOrigin(origins="http://localhost:3000")
@RestController
public class AdminRecipeController {
	
	@Autowired
	private AdminRecipeService recipeService;
	
	// 레시피 리스트 불러오기
	@GetMapping("diet-management")
	public List<RecipeVO> getRecipeList(){
		RecipeVO vo = new RecipeVO();
		List<RecipeVO> result = recipeService.getRecipeList(vo);
		return result;
	}
}
