package com.example.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.example.domain.NewsVO;
import com.example.domain.UserVO;
import com.example.service.NewsService;
import com.example.service.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;

@Controller
public class HomeController {

	@Autowired
	NewsService newsservice;
	@Autowired
	UserService userservice;
	
	@RequestMapping("/index")
	public void index(Model m, HttpSession sess) {
		HashMap user = (HashMap)sess.getAttribute("user");
		//if(user.get("))
		System.out.println(user);
		if(user.get("UPLOADNAME")==null) user.put("UPLOADNAME", "sss.jpg");
		sess.setAttribute("user", user);
		List<NewsVO> news = newsservice.getNewsList(0);
		m.addAttribute("news", news);
	}
	
}
