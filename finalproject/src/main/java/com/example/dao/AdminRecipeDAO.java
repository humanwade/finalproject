package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.RecipeVO;

@Mapper
public interface AdminRecipeDAO {
	
	// 식단 리스트 불러오기
	public List<RecipeVO> getRecipeList(RecipeVO vo);
	
}
