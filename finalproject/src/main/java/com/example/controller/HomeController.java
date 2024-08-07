package com.example.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.NewsVO;
import com.example.domain.RecipeVO;
import com.example.domain.UserPhotoVO;
import com.example.domain.UserVO;
import com.example.domain.WorkcateVO;
import com.example.domain.WorkoutVO;
import com.example.service.NewsService;
import com.example.service.RecipeService;
import com.example.service.UserPhotoService;
import com.example.service.UserService;
import com.example.service.WorkoutService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {

	@Autowired
	NewsService newsservice;
	@Autowired
	UserService userservice;
	@Autowired
	UserPhotoService userphotoservice;
	@Autowired
	RecipeService recipeservice;
	@Autowired
	WorkoutService workoutservice;
	
	@RequestMapping("/index")
	public String index(Model m, HttpSession sess) {
		if(sess.getAttribute("user")==null)
			return "redirect:/regist/login";
		UserVO user = userservice.getUser((String)sess.getAttribute("user"));
		UserPhotoVO profile = userphotoservice.getUserPhoto(user);
		if(profile==null) sess.setAttribute("profile", "sss.jpg");
		else sess.setAttribute("profile", profile.getUploadname());
		List<NewsVO> news = newsservice.getNewsList(0, null);
		m.addAttribute("news", news);
		List<RecipeVO> recipes = recipeservice.mainPageRecipe();
		m.addAttribute("recipes",recipes);
		System.out.println(recipes);
		List<HashMap> recipechart = recipeservice.mainPageChart();
		System.out.println(recipechart);
		m.addAttribute("recipechart", recipechart);
		ObjectMapper objectMapper = new ObjectMapper();
	    String recipechartJson=null;
		try {
			recipechartJson = objectMapper.writeValueAsString(recipechart);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
	    m.addAttribute("recipechart", recipechartJson);
		//운동영상
		List<WorkoutVO> work = workoutservice.mainworkout();
		m.addAttribute("work", work.get(0).getWorkvideoid());
		//운동카테고리목록
		List<WorkcateVO> workcate = workoutservice.workcate();
		m.addAttribute("workcates", workcate);
		System.out.println(workcate);
		return "index";
	}
	
	//운동입력
	@ResponseBody
	@RequestMapping("workinput")
	public String workinput(String workname, Integer worktime) {
		System.out.println(workname);
		System.out.println(worktime);
		return "성공";
	}
	
	// 레시피전환
	@ResponseBody
	@RequestMapping("recipeChange")
	public RecipeVO recipeChange() {
		List<RecipeVO> recipes = recipeservice.mainPageRecipe();
		return recipes.get(0);
	}
	
	@RequestMapping
	public String first() {
		return "redirect:/regist/start";
	}
	
	// 유튜브영상 자동재생 id값 받아오기
	@ResponseBody
	@RequestMapping("getVideoId")
	public String getVideoId() {
		List<WorkoutVO> work = workoutservice.mainworkout();
		return work.get(0).getWorkvideoid();
	}
	
	// 유튜브 재생 실패시 id삭제 및 새로운 영상 로드
	@ResponseBody
	@RequestMapping("getNewVideoId")
	public String getNewVideoId(String videoid) {
		System.out.println(videoid);
		workoutservice.workVideoDelete(videoid);
		WorkoutVO work = workoutservice.mainworkout().get(0);
		System.out.println(work);
		return work.getWorkvideoid();
	}
}
