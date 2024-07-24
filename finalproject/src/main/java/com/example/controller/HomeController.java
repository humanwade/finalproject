package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.example.domain.NewsVO;
import com.example.service.NewsService;

@Controller
public class HomeController {

//	@RequestMapping("/{value}")
//	public String index(@PathVariable("value") String value) {
//		System.out.println(value+"호출");
//		return value;
//	}
	
	@Autowired
	NewsService newsservice;
	
	@RequestMapping("/index")
	public void index(Model m) {
		 List<NewsVO> news = newsservice.getNewsList(0);
		 m.addAttribute("news", news);
	}
	
}
