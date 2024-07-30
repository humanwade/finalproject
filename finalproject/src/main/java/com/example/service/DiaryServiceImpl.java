package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.DiaryDAO;

//**
@Service
public class DiaryServiceImpl implements DiaryService {

	@Autowired
	private DiaryDAO dao;
	
}
