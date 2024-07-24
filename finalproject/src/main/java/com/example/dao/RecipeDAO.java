package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.RecipeVO;

/* ********************
 	DAO와 Mapper 연결
	[1] mapper 에서 
 		<mapper namespace="com.example.dao.BoardDAO">
 	
 	[2] DAO 클래스에서
 		함수명과 mapper에서의 ID값 동일
*/
@Mapper
public interface RecipeDAO {
	public List<RecipeVO> getRecipeList(int start) ;
	public RecipeVO getRecipe(String recipeno);
	public int getTotalPage();
}
