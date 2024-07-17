package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeContrller {
	
	@RequestMapping("/{value}")
	public String index(@PathVariable("value") String value) {
		System.out.println(value+"호출");
		return value;
	}
	
}
