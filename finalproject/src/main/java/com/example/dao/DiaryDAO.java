package com.example.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.example.domain.RecipeVO;

@Mapper
public interface DiaryDAO {
	public void insertDiary();
}
