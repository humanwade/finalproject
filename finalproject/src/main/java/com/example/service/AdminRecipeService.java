package com.example.service;

import java.util.List;

import com.example.domain.RecipeVO;

public interface AdminRecipeService {
	
	public List<RecipeVO> getRecipeList(RecipeVO vo);

}
