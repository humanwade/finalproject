package com.example.domain;

import java.util.Date;


import lombok.Data;

//**
@Data
public class UserVO {

	private String email;
	private String username;
	private String password;
	private Date joindate ;
	private String goal;
	private String goalsuccess;
	private String height;
	private int age;
	private String gender;
	private String activity;
	private int photoid;
	private int weightno;
	private Date successdate;
	
}

