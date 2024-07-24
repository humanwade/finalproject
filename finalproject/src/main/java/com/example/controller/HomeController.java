package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.NewsVO;
import com.example.service.NewsService;

@Controller
public class HomeController {

	@Autowired
	NewsService newsservice;
	
	@RequestMapping("/index")
	public void index(Model m) {
		 List<NewsVO> news = newsservice.getNewsList(0);
		 m.addAttribute("news", news);
	}
	
}
