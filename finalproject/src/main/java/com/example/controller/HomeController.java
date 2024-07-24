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
	
//	@RequestMapping("/diery1")
//	public String diery1() {
//		return "diery/diery1";
//	}
	
	
//    @RequestMapping("/{folder}/{file}")
//    public String handleRequest(@PathVariable("folder") String folder, @PathVariable("file") String file) {
//        return folder + "/" + file;  // 예: /exercise/exercise
//    }

	
}
