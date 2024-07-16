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

	public List<RecipeVO>getRecipeList() {
		return recipeDAO.getRecipeList();
	}

}
