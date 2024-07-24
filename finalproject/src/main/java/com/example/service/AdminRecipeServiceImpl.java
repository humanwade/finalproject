package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.AdminRecipeDAO;
import com.example.domain.RecipeVO;

@Service
public class AdminRecipeServiceImpl implements AdminRecipeService{
	
	@Autowired
	private AdminRecipeDAO dao;
	
	public List<RecipeVO> getRecipeList(RecipeVO vo){
		return dao.getRecipeList(vo);
	}
	
	
}
