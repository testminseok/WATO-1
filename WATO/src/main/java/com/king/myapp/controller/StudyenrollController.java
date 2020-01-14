package com.king.myapp.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.TeacherEnrollVO;
import com.king.myapp.service.StudyEnrollService;


@Controller
@RequestMapping("/study/*")
public class StudyenrollController {
	
	private static final Logger logger = LoggerFactory.getLogger(StudyenrollController.class);	
	
	@Inject
	StudyEnrollService studyService;
	
	
	// 1. 일반인 Study 모집 등록하러 가기
	@RequestMapping(value = "/studentEnroll", method = RequestMethod.GET)
	public void getEnroll() throws Exception{
		logger.info(">--------------------[ 일반인 스터디 모집 등록 GET ]---------------------------<");
		
	}
	
	// 1. 일반인 Study 모집 글 작성 등록
	@RequestMapping(value = "/studentEnroll", method = RequestMethod.POST)
	public String postEnroll(StudyEnrollVO studyVO) throws Exception{

		logger.info(">--------------------[ 일반인 스터디 모집 등록 POST ]---------------------------<");		
		System.out.println(studyVO.getS_category());
		System.out.println(studyVO.getS_title());
		System.out.println(studyVO.getS_level());
		System.out.println(studyVO.getS_photo());
		System.out.println(studyVO.getS_people());
		System.out.println(studyVO.getS_content());
		System.out.println(studyVO.getS_day());
		System.out.println(studyVO.getS_place());
		System.out.println(studyVO.getS_userId());
		System.out.println(studyVO.getS_startDate());
		System.out.println(studyVO.getS_endDate());
		
		studyService.enroll(studyVO);
		
		
		return "redirect:/";
		
	}
	
	//2. 강의 등록 리스트 출력 
		@RequestMapping(value = "/studyBoard", method = RequestMethod.GET)
		public void getClassBoard(Model model) throws Exception{
			logger.info("--------------[ 강의 리스트 출력  GET ]-----------------");
			
			List<StudyEnrollVO> studylist = studyService.list(); 
			
			model.addAttribute("studylist", studylist);
		}
	
	// 4.
	@RequestMapping(value = "/study_DetailRead", method = RequestMethod.GET)
	public void getDetailRead(@RequestParam("s_no") int s_no, Model model) throws Exception{
		logger.info("--------------[ 강의 상세보기  GET ]-----------------");
			
		studyService.viewCount(s_no);
		StudyEnrollVO listOne = studyService.detailRead(s_no);
		
		model.addAttribute("listOne",listOne);
	}	
		
		
	
	// 5. 일반인 Study 등록 내용 수정하러 가기
	@RequestMapping(value = "/studentModify", method = RequestMethod.GET)
	public void getModify(@RequestParam("s_no") int s_no, Model model) throws Exception{
		logger.info(">--------------------[ 일반인 스터디 모집 수정 GET ]---------------------------<");
		
		StudyEnrollVO listOne = studyService.detailRead(s_no);
		
		String road;
		String jibun;
		String str = listOne.getS_place();
		String[] arry = str.split("/");
		
		for (int i = 0; i < arry.length; i++) {
			
			System.out.println(arry[i]);
			
			
		}
		road = arry[0];
		jibun = arry[1];
		
		listOne.setRoad(road);
		listOne.setJibun(jibun);
		
		model.addAttribute("listOne",listOne);
		
	}

	// 6. 일반인 Study 등록 내용 수정 글 등록
		@RequestMapping(value = "/studentModify", method = RequestMethod.POST)
		public String postModify(@RequestParam("s_no") int s_no, StudyEnrollVO studyVO) throws Exception{
			
			logger.info("--------------[ 강의 수정 내용 등록  POST ]-----------------");		
			
			studyService.modify(studyVO);
			
			return "redirect:/study/study_DetailRead?s_no="+s_no;
			
		}
}
