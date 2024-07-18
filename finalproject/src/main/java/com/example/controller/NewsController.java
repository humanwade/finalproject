package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.NewsVO;
import com.example.service.NewsService;

@Controller
@RequestMapping("/news")
public class NewsController {

	@Autowired
	private NewsService service;
	
	// 뉴스페이지 메인화면
	@RequestMapping
	public String home(Model m) {
		List<NewsVO> list = service.getNewsList();
		for(NewsVO vo : list) {
			System.out.println(vo.toString());
		}
		m.addAttribute("result",list);
		return "/news/news";
	}
}
