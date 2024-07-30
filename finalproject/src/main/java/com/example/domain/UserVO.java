package com.example.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//**
@AllArgsConstructor
@NoArgsConstructor
@Data
public class UserVO {

	private String email;
	private String username;
	private String password;
	private Date joindate ;
	private String goal;
	private String goalsuccess;
	private String height;
	private Integer age;
	private String gender;
	private String activity;
	private Integer photoid;
	private Date successdate;
	
}

