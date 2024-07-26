package com.example.controller;

import java.io.File;
import java.util.Arrays;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.domain.PhotosVO;
import com.example.domain.UserVO;
import com.example.service.UserPhotoService;
import com.example.service.UserService;
import com.example.util.MD5Generator;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	@Autowired
	UserService userservice;
	@Autowired
	UserPhotoService userphotoservice;
	
	@RequestMapping
	public String home(Model m) {
		
		HashMap user = userservice.getUser_curWeight();
		System.out.println(user);
		m.addAttribute("user", user);
		return "/mypage/mypage";
	}
	
	
	// 프로필 사진 변경
	@Transactional
	@ResponseBody
	@RequestMapping("changeProfile")
	public String changeProfile(
		@RequestParam("file") MultipartFile files,
		HttpSession sess) {
		
		System.out.println("호출됨 ");
		try {
			// 파일의 원래이름
			String originFilename = files.getOriginalFilename();
			System.out.println("원래파일명 :" + originFilename);
			// 파일첨부를 한 경우라면
			if( originFilename != null && !originFilename.equals("")) {
				String[] accept = {".jpg", ".jpeg", ".png"};
				String extension = originFilename.substring(originFilename.lastIndexOf("."));
				boolean valid=false;
				for(String apt : accept) {
					if(apt.equals(extension)) valid=true;
				}
				if(!valid) return "fail";
				String filename= new MD5Generator(originFilename).toString()+extension;
				System.out.println("변경파일명:" + filename);

				String savepath = System.getProperty("user.dir") 
						+ "\\src\\main\\resources\\static\\userphotos";
				System.out.println("저장경로" +savepath);
			
				if( ! new File(savepath).exists()) {
					new File(savepath).mkdir();
				}
				
				String filepath = savepath + "\\" + filename;
				files.transferTo(new File(filepath));
				System.out.println(filepath+"저장되었음");
				
				// 디비저장
				UserVO user = userservice.getUser();
				PhotosVO fileVO = new PhotosVO();
				fileVO.setOriginFilename(originFilename);
				fileVO.setFilename(filename);
				fileVO.setFilepath(filepath);	
				System.out.println("파일첨부 저장 완료");
				
				//유저가 프로필이 있으면 수정, 없으면 입력
				if(user.getPhotoid() == null) {
					System.out.println("실행1");
					userphotoservice.insertUserPhoto(fileVO);
					userservice.updateProfile(fileVO.getFileid());
					
				}else {
					System.out.println("실행2");
					fileVO.setFileid(user.getPhotoid());
					userphotoservice.updateUserPhoto(fileVO);
				}
				
				//수정된 유저정보 세션에 저장
				HashMap updateuser = userservice.getUser_curWeight();
				sess.setAttribute("user", updateuser);
					
			} // end of if
			else {
				// 파일을 첨부하지 않은 경우
				System.out.println("파일첨부 없음");
				return "fail";
			}
				
		}catch(Exception ex) {
			ex.getMessage();
		}

		return "success";
	}
	
	
	
	
	@RequestMapping("/info")
	public String info() {
		return "/mypage/info_change";
	}
	
	
	@RequestMapping("/change")
	public String change() {
		return "/mypage/pass_change";
	}
	
	@RequestMapping("/change2")
	public String change2() {
		return "/mypage/pass_change2";
	}
	
}
