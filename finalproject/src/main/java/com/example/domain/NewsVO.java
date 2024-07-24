package com.example.domain;

import java.util.Date;

import lombok.Data;

@Data
public class NewsVO {
	
	private int newsid;
	private String title;
	private String newsurl;
	private String content;
	private Date newsdate;
	private String nimgurl;
	
}
