package com.example.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.WorkDiaryVO;
import com.example.domain.WorkcateVO;
import com.example.domain.WorkoutVO;

/* ********************
 	DAO와 Mapper 연결
	[1] mapper 에서 
 		<mapper namespace="com.example.dao.BoardDAO">
 	
 	[2] DAO 클래스에서
 		함수명과 mapper에서의 ID값 동일
*/
@Mapper
public interface WorkoutDAO {
	public List<WorkoutVO> getWorkoutList(Integer start) ;
	public List<WorkoutVO> mainworkout();
	public void workVideoDelete(String videoid);
	public List<WorkcateVO> workcate();
	public void insertWorkDiary(WorkDiaryVO work);
	public HashMap workcal(String email);
}
