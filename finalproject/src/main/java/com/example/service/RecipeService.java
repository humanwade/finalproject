package com.example.service;

import java.util.List;

import com.example.domain.RecipeVO;

public interface RecipeService {
	List<RecipeVO> getRecipeList(String page);
	RecipeVO getRecipe(String recipeno);
	int getTotalPage();
}
