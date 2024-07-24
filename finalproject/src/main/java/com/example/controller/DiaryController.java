package com.example.controller;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.domain.PhotosVO;
import com.example.util.MD5Generator;

@Controller
@RequestMapping("/diary")
public class DiaryController {

	@RequestMapping
	public String home() {
		return "/diary/diary1";
	}
	
	@RequestMapping("report")
	public String report() {
		return "/diary/report";
	}
	
	
	// 사진저장
	@ResponseBody
	@RequestMapping("savePhoto")
	public String savePhoto(
			@RequestParam("file") MultipartFile files) {
		
		System.out.println("호출됨 ");
		try {
			// 파일의 원래이름
			String originFilename = files.getOriginalFilename();
			System.out.println("원래파일명 :" + originFilename);
			// 파일첨부를 한 경우라면
			if( originFilename != null && !originFilename.equals("")) {
				String filename= new MD5Generator(originFilename).toString();
				System.out.println("변경파일명:" + filename);
				/* ************
				 * [1] 추후작업 : 확장자가 필요하다면 붙이기
				 */
				
				// 정해진 폴더를 지정
				String savepath = System.getProperty("user.dir") 
						+ "\\src\\main\\resources\\static\\files";
				System.out.println("저장경로" +savepath);
				/* *************
				 * [2] 
				 */
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
				// 파일을 첨부한 경우
				//boardService.insertBoard(vo, fileVO);
				
			} // end of if
			else {
				// 파일을 첨부하지 않은 경우
				//boardService.insertBoard(vo, null);
				System.out.println("파일첨부 없음");
			}
				
		}catch(Exception ex) {
			ex.getMessage();
		}

		return "155151";
	}
	
}
