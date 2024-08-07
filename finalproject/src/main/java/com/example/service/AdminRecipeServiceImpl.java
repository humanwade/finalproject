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
	
	// 관리자 레시피리스트 불러오기
	public List<RecipeVO> getRecipeList(RecipeVO vo){
		return dao.getRecipeList(vo);
	}
	
	// 관리자 레시피 삭제하기
	public void recipedelete(String recipeno) {
		System.out.println("레시피 삭제 서비스 호출");
		 dao.recipedelete(recipeno);
	}
	
	// 관리자 레시피 등록하기
	public void insertRecipe(RecipeVO vo) {
		dao.insertRecipe(vo);
	}
	
	// 관리자 레시피 수정하기
	public void updateRecipe(RecipeVO vo) {
		System.out.println("레시피 수정서비스");
		dao.updateRecipe(vo);
	}
	
}
