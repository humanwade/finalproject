package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.RecipeDAO;
import com.example.domain.RecipeVO;

//**
@Service
public class RecipeServiceImpl implements RecipeService {
	
	//**
	@Autowired
	private RecipeDAO recipeDAO;

	public List<RecipeVO>getRecipeList(String page) {
		int start = (Integer.parseInt(page)-1)*9;
		System.out.println("start ="+start);
		return recipeDAO.getRecipeList(start);
	}

	@Override
	public int getTotalPage() {
		return recipeDAO.getTotalPage();
	}

	@Override
	public RecipeVO getRecipe(String recipeno) {
		return recipeDAO.getRecipe(recipeno);
	}
	
	public List<RecipeVO>getRecipeMain(){
		System.out.println("메인레시피 서비스 호출");
		
		return recipeDAO.getRecipeMain();
	}

}
