package com.example.controller;

import java.io.File;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.domain.DiaryVO;
import com.example.domain.PhotosVO;
import com.example.domain.UserVO;
import com.example.domain.WeightVO;
import com.example.service.DiaryService;
import com.example.service.PhotoService;
import com.example.service.UserService;
import com.example.service.WeightService;
import com.example.util.MD5Generator;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/diary")
public class DiaryController {

	@Autowired
	PhotoService photoservice;
	@Autowired
	UserService userservice;
	@Autowired
	DiaryService diaryservice;
	@Autowired
	WeightService weightservice;
	
	@RequestMapping
	public String home(Model m, HttpSession sess, String seldate) {
		//세션 로그인 검사
		if(sess.getAttribute("user")==null)
			return"redirect:/regist/login";
		UserVO user = userservice.getUser((String)sess.getAttribute("user"));
		HashMap userinfo = userservice.getUser_curWeight(user);
		String email = (String)sess.getAttribute("user");
		
		//seldate가 null이면 오늘날짜입력
		LocalDate now = LocalDate.now();
		if(seldate==null) {
			m.addAttribute("seldate",now.toString());
			seldate = now.toString();
		}
			else m.addAttribute("seldate", seldate);
		System.out.println(seldate);
		//다이어리 리스트 가져오기
		List<HashMap> diarylist = diaryservice.getDiary(email, seldate);
		List[] result= new List[4];
		for(int i=0; i<result.length; i++) {
			result[i] = new ArrayList();
		}
		System.out.println(diarylist);
		for(HashMap vo : diarylist) {
			switch((String)vo.get("HISTORY")) {
			case "아침" : result[0].add(vo); break;
			case "점심" : result[1].add(vo); break;
			case "저녁" : result[2].add(vo); break;
			case "간식" : result[3].add(vo); break;
			}
		}
		m.addAttribute("result", result);
		m.addAttribute("foodinfo", diaryservice.getFoodInfo());
		m.addAttribute("userinfo",userinfo);
		List<WeightVO> weights = weightservice.getWeights(email, seldate);
		m.addAttribute("weights", weights);
		System.out.println(weights);
		List<HashMap> hm = diaryservice.getDiaryChartSum(email, seldate);
		System.out.println(hm);
		m.addAttribute("chartdatas", diaryservice.getDiaryChartSum(email, seldate));
		return "/diary/diary1";
	}
	
	//리포트페이지
	@RequestMapping("report")
	public String report(
			Model m,
			String seldate,
			HttpSession sess) {
//		LocalDate now = LocalDate.now();
//		System.out.println(now.getYear());
//		System.out.println(now.getMonthValue());
//		String year = String.valueOf(now.getYear());
//		String month = String.valueOf(now.getMonth());
		//diaryservice.getReportChart(year, month);
		String email;
		if(sess.getAttribute("user")==null)
			return "redirect:/regist/login";
		else 
			email = (String)sess.getAttribute("user");
		if(seldate==null)
			seldate = LocalDate.now().toString();
		// 날짜 년, 월 분리
		String[] year_month = seldate.split("-");
		// 차트 데이터 DB에서 가져오기
		List<HashMap> reports = diaryservice.getReportChart(email ,year_month[0], year_month[1]);
		
		// 다이어리 데이터(사진) DB에서 가져오기
		List<HashMap> diary = diaryservice.getDiary(email, seldate);
		System.out.println(diary);
		System.out.println(reports);
		m.addAttribute("reports", reports);
		m.addAttribute("seldate", seldate);
		m.addAttribute("diaries",diary);
		return "/diary/report";
	}
	
	// 사진저장
	@ResponseBody
	@RequestMapping("savePhotoDiary")
	public String savePhotoDiary(
			@RequestParam("file") MultipartFile files,
			HttpSession sess,
			DiaryVO diary) {
		System.out.println("savePhoto호출됨 ");
		// 유저정보
		UserVO user = userservice.getUser((String)sess.getAttribute("user"));
		
		try {
			// 파일의 원래이름
			String originFilename = files.getOriginalFilename();
			System.out.println("원래파일명 :" + originFilename);
			// 파일첨부를 한 경우라면
			if( originFilename != null && !originFilename.equals("")) {
				String filename= new MD5Generator(originFilename).toString();
				System.out.println("변경파일명:" + filename);
				// 정해진 폴더를 지정
				String savepath = System.getProperty("user.dir") 
						+ "\\src\\main\\resources\\static\\files";
				System.out.println("저장경로" +savepath);
				// 폴더 없으면 폴더 생성
				if( ! new File(savepath).exists()) {
					new File(savepath).mkdir();
				}
				
				// 실제 저장되는 파일
				String filepath = savepath + "\\" + filename;
				files.transferTo(new File(filepath));
				System.out.println(filepath+"저장되었음");
				// 디비저장
				PhotosVO fileVO = new PhotosVO();
				fileVO.setOriginFilename(originFilename);
				fileVO.setFilename(filename);
				fileVO.setFilepath(filepath);	
				System.out.println("파일첨부 저장 완료");
				// 음식 사진 정보 DB저장
				photoservice.insertPhoto(fileVO);
				diary.setPhotoid(fileVO.getFileid());
				diary.setEmail(user.getEmail());
				// 다이어리 DB 입력
				diaryservice.insertDiary(diary);
				System.out.println("다이어리DB입력완료");
			} // end of if
			else {
				System.out.println("파일첨부 없음");
			}
				
		}catch(Exception ex) {
			ex.getMessage();
		}

		return "finish";
	}
	
	@ResponseBody
	@RequestMapping("saveWeight")
	public String saveWeight(
			HttpSession sess,
			WeightVO weight) {
		System.out.println("saveWeight 호출");
		if(sess.getAttribute("user")==null) {
			return "fail";
		}
		String email = (String)sess.getAttribute("user");
		weight.setEmail(email);
		WeightVO seldayweight = weightservice.seldayWeight(weight);
		if(seldayweight!=null) {
			weightservice.updateWeight(weight);
		}else {
			weight.setEmail((String)sess.getAttribute("user"));
			weightservice.insertWeight(weight);
		}
		
		return "DB입력성공";
	}
	
	@RequestMapping("photo")
	public String photo() {
		return "/diary/detail_photo";
	}

}
