package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.NewsVO;
import com.example.domain.UserPhotoVO;
import com.example.domain.UserVO;
import com.example.domain.WorkoutVO;
import com.example.service.NewsService;
import com.example.service.RecipeService;
import com.example.service.UserPhotoService;
import com.example.service.UserService;
import com.example.service.WorkoutService;

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
		List<NewsVO> news = newsservice.getNewsList(0);
		m.addAttribute("news", news);
		//운동영상
		List<WorkoutVO> work = workoutservice.mainworkout();
		m.addAttribute("work",work);
		System.out.println(work);
		/*
		 * List<RecipeVO> recipe = recipeservice.getRecipeMain();
		 * System.out.println("메인레시피 호출"); m.addAttribute("recipe", recipe);
		 */
		return "index";
	}
	
	@RequestMapping
	public String first() {
		return "redirect:/regist/start";
	}
}
