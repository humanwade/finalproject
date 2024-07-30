package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.NewsVO;
import com.example.domain.UserPhotoVO;
import com.example.domain.UserVO;
import com.example.service.NewsService;
import com.example.service.UserPhotoService;
import com.example.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {

	@Autowired
	NewsService newsservice;
	@Autowired
	UserService userservice;
	@Autowired
	UserPhotoService userphotoservice;
	
	@RequestMapping("/index")
	public String index(Model m, HttpSession sess) {
		if(sess.getAttribute("user")==null)
			return "redirect:/regist/login";
		UserVO user = userservice.getUser((String)sess.getAttribute("user"));
		UserPhotoVO profile = userphotoservice.getUserPhoto(user);
		if(profile.getUploadname()==null) profile.setUploadname("sss.jgp");
		sess.setAttribute("profile", profile.getUploadname());
		List<NewsVO> news = newsservice.getNewsList(0);
		m.addAttribute("news", news);
		return "index";
	}
	
}
