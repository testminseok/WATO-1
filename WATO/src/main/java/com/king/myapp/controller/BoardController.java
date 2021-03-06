package com.king.myapp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.king.myapp.domain.BoardVO;
import com.king.myapp.domain.QnaBoardVO;
import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.StudentParticipationVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.StudyListFilter;
import com.king.myapp.domain.TeachVO;
import com.king.myapp.domain.TeacherEnrollVO;
import com.king.myapp.domain.TeacherParticipationVO;
import com.king.myapp.service.BoardService;
import com.king.myapp.service.StudentParticipationService;



@Controller
@RequestMapping("/board/*")  
public class BoardController { 

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired 
	BoardService service; 
	@Inject
	StudentParticipationService participationService;
	
	/*
	 * @Autowired ReplyService RepService;
	 */
	
		/* index.jsp 에서 프로그램 랭귀지 순위 클릭시 메뉴바 검색창에 검색이되고 viewcnt가 1씩 올라감*/
		@RequestMapping(value="/searchResult/{searchKey}" , method=RequestMethod.GET)
		public String getsearchResult(@PathVariable("searchKey") String searchKey, Model model) throws Exception {
			logger.info("get list search");
			if (searchKey == null || searchKey.equals("")) { 
				searchKey = "_";
			}
			if (searchKey.equals("Ccrosshatch")) {
				searchKey = "C#";
			}
			System.out.println("PROGRAMMING_LANGUAGE_name : "+searchKey);
			
			List<StudyEnrollVO> listStudy = service.searchResultStudy(searchKey);
			
			if (listStudy.size() != 0 && listStudy.size() >=4) {
				List<StudyEnrollVO> Studylist = listStudy.subList(0, 4);
				model.addAttribute("listStudy",Studylist);
			}else {
				model.addAttribute("listStudy",listStudy);  
			}
			
			List<TeacherEnrollVO> listTeacher = service.searchResultTeacher(searchKey); 
			List<QnaBoardVO> listQna = service.searchResultQna(searchKey);
			
			model.addAttribute("listTeacher",listTeacher); 
			model.addAttribute("listQna",listQna);  
			model.addAttribute("searchKey",searchKey);
			return "board/searchResult";   
		}
		
		/* 메뉴바 검색시 검색어를 가지고 DB 목록 조회 */
		@RequestMapping(value="/searchResult" , method=RequestMethod.POST)
		public String searchResult(@RequestParam("searchKey") String searchKey, Model model) throws Exception {
			logger.info("post list search");
			
			System.out.println("searchKey : "+searchKey);
			if (searchKey == null || searchKey.equals("")) { 
				searchKey = "_";
			}
			 
			List<StudyEnrollVO> listStudy = service.searchResultStudy(searchKey);
			
			if (listStudy.size() != 0 && listStudy.size() >= 4) {
				List<StudyEnrollVO> Studylist = listStudy.subList(0, 4);
				model.addAttribute("listStudy",Studylist);
			}else {
				model.addAttribute("listStudy",listStudy);  
			}
			
			List<TeacherEnrollVO> listTeacher = service.searchResultTeacher(searchKey); 
			List<QnaBoardVO> listQna = service.searchResultQna(searchKey);
			
			model.addAttribute("listTeacher",listTeacher); 
			model.addAttribute("listQna",listQna);  
			model.addAttribute("searchKey",searchKey);
			return "board/searchResult";   
		}
		/* Ajax 를 위해 SearchStudylist페이지에 검색어와 현재 표시할 게시글 갯수를 가지고 요청 size=증가되는 값으로 20개 씩 목록 보여줌*/
		@RequestMapping(value="/SearchStudylist/{searchKey}/{size}" , method=RequestMethod.GET)   
		public String ajaxStudyResult(@PathVariable("searchKey") String searchKey,@PathVariable("size") int size,Model model) throws Exception {
			 
			logger.info("get ajax Studylist"); 
			System.out.println(searchKey);    
			System.out.println("size : "+size); 
			 
			List<StudyEnrollVO> listStudy = service.searchResultStudy(searchKey);
			 
			if (listStudy.size() <= size) {
				model.addAttribute("maxlist","더이상 검색 결과가 없습니다."); 
				model.addAttribute("listStudy",listStudy); 
			}else {
				List<StudyEnrollVO> Studylist = listStudy.subList(0, size); 
				model.addAttribute("listStudy",Studylist);  
			}
			
			return "/board/SearchStudylist";   
		}
		 
		/* 메뉴바에 있는 스터디 찾기*/
		@RequestMapping(value="/studylist" , method=RequestMethod.GET) 
		public String studylist(Model model, HttpSession session) throws Exception { 
			logger.info("get studylist"); 
//			if (session.getAttribute("std") != null) {
//				StdVO stdvo = (StdVO) session.getAttribute("std"); 
//			}
//			if (session.getAttribute("teach") != null) {
//				TeachVO teachvo = (TeachVO) session.getAttribute("teach"); 
//			}
			
			
			return "/studylist";  
		} 
		/**/
//		@RequestMapping(value="/index" , method=RequestMethod.GET)
//		public String index(Model model) throws Exception { 
//			logger.info("get list search");
//			service.listRank();   
//			model.addAttribute("listRank",service.listRank());
//			
//			return "/index";
//		}  
		
		/* , 스터디및 강사 를 조회 하는 페이지 studylist안에 iframe 으로 요청됨*/
		@RequestMapping(value="/studylistview" , method=RequestMethod.GET)
		public String getstudylistview(Model model, HttpSession session) throws Exception {
			logger.info("get studylistview"); 
			if (session.getAttribute("std") == null && session.getAttribute("teach") == null) {
				List<StudyEnrollVO> studylistAll = service.studylistAll(); //전체 목록을 가져온다
				
				model.addAttribute("studylistAll",studylistAll); 
				List<TeacherEnrollVO> TearchlistAll = service.TearchlistAll(); 
				model.addAttribute("TearchlistAll",TearchlistAll); 
				model.addAttribute("loginplase","로그인이 필요한 기능입니다.");
				return "/include/studylistview";
			}
			
			if (session.getAttribute("std") != null) {
				StdVO stdvo = (StdVO) session.getAttribute("std");
				String stdid = stdvo.getUser_Id();
				System.out.println("stdid = "+stdid);
				
				StudyEnrollVO std = new StudyEnrollVO(); 
				std.setS_userId(stdid); // 현재의 로그인된 아이디
				List<StudyEnrollVO> heartcheck = service.seleteheartbutton(std); // 로그인된 아이디로 즐겨찾기를 한것이 있는지 검색하고 
				
				if (heartcheck.size() != 0) { // 즐겨찾기를 한 스터디가 있는지 확인
					ArrayList<Integer> stdsno = new ArrayList<Integer>();  // 현재 로그인된 아이디로 즐겨찾기를 한 스터디가 있다면 그 스터디들의 s_no을 담을 arryList
					for (int i = 0; i < heartcheck.size(); i++) { //있다면 그것의 사이즈만큼 돌리고
						stdsno.add(heartcheck.get(i).getS_no()); // 스터디들의 s_no을 arraylist에 담아둔다
					}
					model.addAttribute("heartbutton",stdsno); 
				}
				else {
					model.addAttribute("heartbutton",null);// 즐겨찾기가 없다면 null
				}
				
				List<StudyEnrollVO> likecheck = service.seletelikebutton(std); // 로그인된 아이디로 즐겨찾기를 한것이 있는지 검색하고 
				
				if (likecheck.size() != 0) { // 즐겨찾기를 한 스터디가 있는지 확인
					ArrayList<Integer> like_sno = new ArrayList<Integer>();  // 현재 로그인된 아이디로 즐겨찾기를 한 스터디가 있다면 그 스터디들의 s_no을 담을 arryList
					for (int i = 0; i < likecheck.size(); i++) { //있다면 그것의 사이즈만큼 돌리고
						like_sno.add(likecheck.get(i).getS_no()); // 스터디들의 s_no을 arraylist에 담아둔다
					}
					model.addAttribute("likebutton",like_sno); 
				}
				else {
					model.addAttribute("likebutton",null);// 즐겨찾기가 없다면 null
				}
			}
			
			
			if (session.getAttribute("teach") != null) {
				TeachVO teachvo = (TeachVO) session.getAttribute("teach");
				String teachid = teachvo.getUser_Id(); 
				System.out.println("teachid : " + teachid);
		
				StudyEnrollVO std = new StudyEnrollVO();
				std.setS_userId(teachid);
				List<StudyEnrollVO> heartcheck = service.seleteheartbutton(std);
				
				
				if (heartcheck.size() != 0) { // 즐겨찾기를 한 스터디가 있는지 확인
					ArrayList<Integer> stdsno = new ArrayList<Integer>();  // 현재 로그인된 아이디로 즐겨찾기를 한 스터디가 있다면 그 스터디들의 s_no을 담을 arryList
					for (int i = 0; i < heartcheck.size(); i++) { //있다면 그것의 사이즈만큼 돌리고
						stdsno.add(heartcheck.get(i).getS_no()); // 스터디들의 s_no을 arraylist에 담아둔다
					}
					model.addAttribute("heartbutton",stdsno); 
				}
				else {
					model.addAttribute("heartbutton",null);// 즐겨찾기가 없다면 null
				}
				
				List<StudyEnrollVO> likecheck = service.seletelikebutton(std); // 로그인된 아이디로 즐겨찾기를 한것이 있는지 검색하고 
				
				if (likecheck.size() != 0) { // 즐겨찾기를 한 스터디가 있는지 확인
					ArrayList<Integer> like_sno = new ArrayList<Integer>();  // 현재 로그인된 아이디로 즐겨찾기를 한 스터디가 있다면 그 스터디들의 s_no을 담을 arryList
					for (int i = 0; i < likecheck.size(); i++) { //있다면 그것의 사이즈만큼 돌리고
						like_sno.add(likecheck.get(i).getS_no()); // 스터디들의 s_no을 arraylist에 담아둔다
					}
					model.addAttribute("likebutton",like_sno); 
				}
				else {
					model.addAttribute("likebutton",null);// 즐겨찾기가 없다면 null
				}
				
			}
			model.addAttribute("loginplase",null);
			
			List<StudyEnrollVO> studylistAll = service.studylistAll(); //전체 목록을 가져온다
			model.addAttribute("studylistAll",studylistAll); 
			List<TeacherEnrollVO> TearchlistAll = service.TearchlistAll(); 
			model.addAttribute("TearchlistAll",TearchlistAll);
			return "/include/studylistview";   
		}  
		/*studylistview안에 filter 검색 기능 */
		@RequestMapping(value="/studylistview" , method=RequestMethod.POST)
		public String poststudylistview(Model model, StudyListFilter SLF, HttpSession session) throws Exception {
			logger.info("post studylistview"); 
			if (session.getAttribute("std") == null && session.getAttribute("teach") == null) {
				model.addAttribute("loginplase","로그인이 필요한 기능입니다.");
			}
			else {
				model.addAttribute("loginplase",null);
			}
			
			if (session.getAttribute("std") != null) {
				StdVO stdvo = (StdVO) session.getAttribute("std");
				String stdid = stdvo.getUser_Id();
				System.out.println("stdid = "+stdid);
				
				StudyEnrollVO std = new StudyEnrollVO(); 
				std.setS_userId(stdid); // 현재의 로그인된 아이디
				List<StudyEnrollVO> heartcheck = service.seleteheartbutton(std); // 로그인된 아이디로 즐겨찾기를 한것이 있는지 검색하고 
				
				if (heartcheck.size() != 0) { // 즐겨찾기를 한 스터디가 있는지 확인
					ArrayList<Integer> stdsno = new ArrayList<Integer>();  // 현재 로그인된 아이디로 즐겨찾기를 한 스터디가 있다면 그 스터디들의 s_no을 담을 arryList
					for (int i = 0; i < heartcheck.size(); i++) { //있다면 그것의 사이즈만큼 돌리고
						stdsno.add(heartcheck.get(i).getS_no()); // 스터디들의 s_no을 arraylist에 담아둔다
					}
					model.addAttribute("heartbutton",stdsno); 
				}
				else {
					model.addAttribute("heartbutton",null);// 즐겨찾기가 없다면 null
				}
				
				List<StudyEnrollVO> likecheck = service.seletelikebutton(std); // 로그인된 아이디로 즐겨찾기를 한것이 있는지 검색하고 
				
				if (likecheck.size() != 0) { // 즐겨찾기를 한 스터디가 있는지 확인
					ArrayList<Integer> like_sno = new ArrayList<Integer>();  // 현재 로그인된 아이디로 즐겨찾기를 한 스터디가 있다면 그 스터디들의 s_no을 담을 arryList
					for (int i = 0; i < likecheck.size(); i++) { //있다면 그것의 사이즈만큼 돌리고
						like_sno.add(likecheck.get(i).getS_no()); // 스터디들의 s_no을 arraylist에 담아둔다
					}
					model.addAttribute("likebutton",like_sno); 
				}
				else {
					model.addAttribute("likebutton",null);// 즐겨찾기가 없다면 null
				}
			}
			
			
			if (session.getAttribute("teach") != null) {
				TeachVO teachvo = (TeachVO) session.getAttribute("teach");
				String teachid = teachvo.getUser_Id(); 
				System.out.println("teachid : " + teachid);
		
				StudyEnrollVO std = new StudyEnrollVO();
				std.setS_userId(teachid);
				List<StudyEnrollVO> heartcheck = service.seleteheartbutton(std);
				
				
				if (heartcheck.size() != 0) { // 즐겨찾기를 한 스터디가 있는지 확인
					ArrayList<Integer> stdsno = new ArrayList<Integer>();  // 현재 로그인된 아이디로 즐겨찾기를 한 스터디가 있다면 그 스터디들의 s_no을 담을 arryList
					for (int i = 0; i < heartcheck.size(); i++) { //있다면 그것의 사이즈만큼 돌리고
						stdsno.add(heartcheck.get(i).getS_no()); // 스터디들의 s_no을 arraylist에 담아둔다
					}
					model.addAttribute("heartbutton",stdsno); 
				}
				else {
					model.addAttribute("heartbutton",null);// 즐겨찾기가 없다면 null
				}
				List<StudyEnrollVO> likecheck = service.seletelikebutton(std); // 로그인된 아이디로 즐겨찾기를 한것이 있는지 검색하고 
				
				if (likecheck.size() != 0) { // 즐겨찾기를 한 스터디가 있는지 확인
					ArrayList<Integer> like_sno = new ArrayList<Integer>();  // 현재 로그인된 아이디로 즐겨찾기를 한 스터디가 있다면 그 스터디들의 s_no을 담을 arryList
					for (int i = 0; i < likecheck.size(); i++) { //있다면 그것의 사이즈만큼 돌리고
						like_sno.add(likecheck.get(i).getS_no()); // 스터디들의 s_no을 arraylist에 담아둔다
					}
					model.addAttribute("likebutton",like_sno); 
				}
				else {
					model.addAttribute("likebutton",null);// 즐겨찾기가 없다면 null
				}
				
				
			}
			
			if (SLF.getFiletertype() == null) { // 널이 들어올경우 검색이 안될 수 있어 ""로 바꿈
				SLF.setFiletertype(""); 
			} 
			if (SLF.getCategory() == null) {
				SLF.setCategory(""); 
			}
			if (SLF.getLevel() == null) {
				SLF.setLevel("");
			} 
			if (SLF.getTime() == null) { 
				SLF.setTime("");   
			}
			if (SLF.getPlace()== null) { 
				SLF.setPlace("");
			}
			
			if (SLF.getFiletertype().equals("10")) { //강사, 스터디, 스터디/강사 중 선택하여 검색 10=스터디, 20=강사
				
				List<StudyEnrollVO> StudyListFilter = service.studylistfilter(SLF); 
				model.addAttribute("StudyListFilterdata",StudyListFilter);
				
			}else if (SLF.getFiletertype().equals("20")) {
				
				List<TeacherEnrollVO> TeacherListFilter = service.TeacherListFilter(SLF);
				model.addAttribute("TeacherListFilter",TeacherListFilter); 
			}
			else{
//				스터디 강사 둘다 조회
				List<StudyEnrollVO> StudyListFilter = service.studylistfilter(SLF);
				model.addAttribute("StudyListFilterdata",StudyListFilter);
				List<TeacherEnrollVO> TeacherListFilter = service.TeacherListFilter(SLF);
				model.addAttribute("TeacherListFilter",TeacherListFilter);  
			}
			
			model.addAttribute("getFiletertype",SLF.getFiletertype()); //검색했을때 새로고침이 되는데 필터에 검색했던 값들을 다시 불러오기 위해 넣어둠
			model.addAttribute("getPlace",SLF.getPlace());
			model.addAttribute("getCategory",SLF.getCategory());
			model.addAttribute("getRank",SLF.getLevel());
			model.addAttribute("getTime",SLF.getTime());
			
			return "/include/studylistview"; 
		}  
		
		@RequestMapping(value = "/heartbuttoninsert/{s_no}" , method = RequestMethod.GET)
		public String heartbuttoninsert(@PathVariable("s_no") int s_no, HttpSession session) throws Exception {
			logger.info("하트버튼을 누르면 이쪽으로");
			if (session.getAttribute("std") == null && session.getAttribute("teach") == null) {
				return "redirect:/board/studylistview";
			}
			 
			StudyEnrollVO std = new StudyEnrollVO(); 
			
			if ( session.getAttribute("std") != null) {
				StdVO stdvo = (StdVO) session.getAttribute("std");
				String stdid = stdvo.getUser_Id();
				std.setS_userId(stdid);
				
			}
			if (session.getAttribute("teach") != null) {
				TeachVO teachvo = (TeachVO) session.getAttribute("teach");
				String teachid = teachvo.getUser_Id(); 
				std.setS_userId(teachid); 
			}
			std.setS_no(s_no);   
			service.heartbuttoninsert(std); 
			  
			return "redirect:/board/studylistview";
		}
		@RequestMapping(value = "/heartbuttondelete/{s_no}" , method = RequestMethod.GET)
		public String heartbuttondelete(@PathVariable("s_no") int s_no,@RequestParam("myinfo") boolean  myinfo ,HttpSession session) throws Exception {
			logger.info("하트버튼을 다시 누르면 이쪽으로 = 삭제");
			
			if (session.getAttribute("std") == null && session.getAttribute("teach") == null) {
				return "redirect:/board/studylistview";
			}
			
			StudyEnrollVO std = new StudyEnrollVO();
			 
			if ( session.getAttribute("std") != null) {
				StdVO stdvo = (StdVO) session.getAttribute("std");
				String stdid = stdvo.getUser_Id();
				std.setS_userId(stdid);
				
			}
			if (session.getAttribute("teach") != null) {
				TeachVO teachvo = (TeachVO) session.getAttribute("teach");
				String teachid = teachvo.getUser_Id(); 
				std.setS_userId(teachid); 
			}
			std.setS_no(s_no);   
			service.heartbuttondelete(std); 
			
			if (myinfo == true) {
				return "redirect:/board/myinformation";
			}
			
			return "redirect:/board/studylistview";
		}
		
		@RequestMapping(value = "/likebuttoninsert/{s_no}" , method = RequestMethod.GET)
		public String likebuttoninsert(@PathVariable("s_no") int s_no, HttpSession session) throws Exception {
			logger.info("좋아요버튼을 누르면 이쪽으로");
			if (session.getAttribute("std") == null && session.getAttribute("teach") == null) {
				return "redirect:/board/studylistview";
			}
			 
			StudyEnrollVO std = new StudyEnrollVO(); 
			 
			if ( session.getAttribute("std") != null) {
				StdVO stdvo = (StdVO) session.getAttribute("std");
				String stdid = stdvo.getUser_Id();
				std.setS_userId(stdid);
				
			}
			if (session.getAttribute("teach") != null) {
				TeachVO teachvo = (TeachVO) session.getAttribute("teach");
				String teachid = teachvo.getUser_Id(); 
				std.setS_userId(teachid); 
			}
			std.setS_no(s_no);   
			service.likebuttoninsert(std); 
			  
			return "redirect:/board/studylistview";
		}
		@RequestMapping(value = "/likebuttondelete/{s_no}" , method = RequestMethod.GET)
		public String likebuttondelete(@PathVariable("s_no") int s_no,@RequestParam("myinfo") boolean  myinfo, HttpSession session) throws Exception {
			logger.info("좋아요버튼을 다시 누르면 이쪽으로 = 삭제");
			
			if (session.getAttribute("std") == null && session.getAttribute("teach") == null) {
				return "redirect:/board/studylistview";
			}
			
			StudyEnrollVO std = new StudyEnrollVO();
			
			if ( session.getAttribute("std") != null) {
				StdVO stdvo = (StdVO) session.getAttribute("std");
				String stdid = stdvo.getUser_Id();
				std.setS_userId(stdid);
				
			}
			if (session.getAttribute("teach") != null) {
				TeachVO teachvo = (TeachVO) session.getAttribute("teach");
				String teachid = teachvo.getUser_Id(); 
				std.setS_userId(teachid); 
			}
			std.setS_no(s_no);   
			service.likebuttondelete(std); 
			
			if (myinfo == true) {
				return "redirect:/board/myinformation";
			}
			
			return "redirect:/board/studylistview";
		}
		
		@RequestMapping("myinformation") 
		public String myinformation (HttpSession session, Model model) throws Exception {
			logger.info("여기는 내 정보 보는곳");
			
			if (session.getAttribute("std") == null && session.getAttribute("teach") == null) {
				model.addAttribute("loginplase","로그인이 필요한 기능입니다.");
				return "redirect:/";
			}
			
			StudyEnrollVO std = new StudyEnrollVO();
			
			if ( session.getAttribute("std") != null) {
				StdVO stdvo = (StdVO) session.getAttribute("std");
				String stdid = stdvo.getUser_Id();
				std.setS_userId(stdid);
				
				List<StudyEnrollVO> heartcheck = service.seleteheartbutton(std); // 로그인된 아이디로 즐겨찾기를 한것이 있는지 검색하고
				List<StudyEnrollVO> likecheck = service.seletelikebutton(std); // 로그인된 아이디로 좋아요를 한것이 있는지 검색하고
				
				List<StudyEnrollVO> s_heartlist = new ArrayList<StudyEnrollVO>();
				List<TeacherEnrollVO> t_heartlist = new ArrayList<TeacherEnrollVO>();
				List<StudyEnrollVO> s_likelist = new ArrayList<StudyEnrollVO>();
				List<TeacherEnrollVO> t_likelist = new ArrayList<TeacherEnrollVO>();
				 
				if (heartcheck.size() != 0) { 
					for (int i = 0; i < heartcheck.size(); i++) {
						 
						int s_no = heartcheck.get(i).getS_no();
						StudyEnrollVO s_study =service.searchS_no(s_no);
						TeacherEnrollVO t_study =service.searchT_no(s_no);
						if (s_study != null) {
							s_heartlist.add(s_study);
						}
						if (t_study != null) {
							t_heartlist.add(t_study);						 
						}
					}
					if (s_heartlist.size() != 0) {
						model.addAttribute("s_heartlist",s_heartlist);
					}else {
						model.addAttribute("s_heartlist",null);
					}
					
					if (t_heartlist.size() != 0) {
						model.addAttribute("t_heartlist",t_heartlist);
					}else {
						model.addAttribute("t_heartlist",null);
					}
					
				}
				
				if (likecheck.size() != 0) {
					
					for (int i = 0; i < likecheck.size(); i++) {
						
						int s_no = likecheck.get(i).getS_no();
						StudyEnrollVO study =service.searchS_no(s_no);
						TeacherEnrollVO t_study =service.searchT_no(s_no);
						if (study != null) {
							s_likelist.add(study);
						}
						if (t_study != null) { 
							t_likelist.add(t_study);			 			
						} 
					}	
					if (s_heartlist.size() != 0) {
						model.addAttribute("s_likelist",s_likelist);
					}else {
						model.addAttribute("s_likelist",null);
					}
					
					if (t_heartlist.size() != 0) {
						model.addAttribute("t_likelist",t_likelist);
					}else {
						model.addAttribute("t_likelist",null);
					}
					
				}
				
			}
			if (session.getAttribute("teach") != null) {
				TeachVO teachvo = (TeachVO) session.getAttribute("teach");
				String teachid = teachvo.getUser_Id(); 
				std.setS_userId(teachid);
				
				List<StudyEnrollVO> heartcheck = service.seleteheartbutton(std); // 로그인된 아이디로 즐겨찾기를 한것이 있는지 검색하고
				List<StudyEnrollVO> likecheck = service.seletelikebutton(std); // 로그인된 아이디로 좋아요를 한것이 있는지 검색하고
				
				List<StudyEnrollVO> s_heartlist = new ArrayList<StudyEnrollVO>();
				List<TeacherEnrollVO> t_heartlist = new ArrayList<TeacherEnrollVO>();
				List<StudyEnrollVO> s_likelist = new ArrayList<StudyEnrollVO>();
				List<TeacherEnrollVO> t_likelist = new ArrayList<TeacherEnrollVO>();
				 
				if (heartcheck.size() != 0) { 
					for (int i = 0; i < heartcheck.size(); i++) {
						 
						int s_no = heartcheck.get(i).getS_no();
						StudyEnrollVO s_study =service.searchS_no(s_no);
						TeacherEnrollVO t_study =service.searchT_no(s_no);
						if (s_study != null) {
							s_heartlist.add(s_study);
						}
						if (t_study != null) {
							t_heartlist.add(t_study);						 
						}
					}
					if (s_heartlist.size() != 0) {
						model.addAttribute("s_heartlist",s_heartlist);
					}else {
						model.addAttribute("s_heartlist",null);
					}
					
					if (t_heartlist.size() != 0) {
						model.addAttribute("t_heartlist",t_heartlist);
					}else {
						model.addAttribute("t_heartlist",null);
					}
					
				}
				
				if (likecheck.size() != 0) {
					
					for (int i = 0; i < likecheck.size(); i++) {
						
						int s_no = likecheck.get(i).getS_no();
						StudyEnrollVO study =service.searchS_no(s_no);
						TeacherEnrollVO t_study =service.searchT_no(s_no);
						if (study != null) {
							s_likelist.add(study);
						}
						if (t_study != null) { 
							t_likelist.add(t_study);			 			
						} 
					}	
					if (s_heartlist.size() != 0) {
						model.addAttribute("s_likelist",s_likelist);
					}else {
						model.addAttribute("s_likelist",null);
					}
					
					if (t_heartlist.size() != 0) {
						model.addAttribute("t_likelist",t_likelist);
					}else {
						model.addAttribute("t_likelist",null);
					}
					
				}
			}
			 
			return "/board/myinformation";
		}
		
		
		@RequestMapping("clock")
		public String clock() {
			return "/include/clock";
		}
		@RequestMapping(value = "/Myenroll")
		public String getMyenroll (Model model,HttpSession session) throws Exception {
			if (session.getAttribute("std") == null && session.getAttribute("teach") == null) {
				return "redirect:/";
			}
			StdVO std = (StdVO) session.getAttribute("std");
			TeachVO tech = (TeachVO) session.getAttribute("teach");
			
			if (std != null) {
				String stduserid =  std.getUser_Id();
				List<StudyEnrollVO> studylist = service.studylistAll();
				List<StudyEnrollVO> mystudy = new ArrayList<StudyEnrollVO>();
				for (StudyEnrollVO studyEnrollVO : studylist) {
					if (studyEnrollVO.getS_userId().equals(stduserid)) {
						mystudy.add(studyEnrollVO);
					}
				}
				model.addAttribute("mystudy",mystudy);
			}
			if (tech != null) {
				String techuserid =  tech.getUser_Id();
				List<TeacherEnrollVO> studylist = service.TearchlistAll();
				List<TeacherEnrollVO> mystudy = new ArrayList<TeacherEnrollVO>();
				for (TeacherEnrollVO teacherEnrollVO : studylist) {
					if (teacherEnrollVO.getT_userId().equals(techuserid)) {
						mystudy.add(teacherEnrollVO);
					}
				}
				model.addAttribute("mystudy",mystudy); 
			}
			return "/board/Myenroll";
		}
		
		@RequestMapping(value = "myenrollajax")
		public String t_myenrollajax(@RequestParam("bno") int bno, HttpSession session, Model model) throws Exception {
			logger.info("myenrollajax 컨트롤러");
			System.out.println(bno); 
			 
			if (session.getAttribute("std") !=null) {
				int s_no = bno; 
				List<StudentParticipationVO> partiuser = service.myenrollstudent(s_no);
				List<StudentParticipationVO> particomplete = participationService.selectparticomplete(s_no);
				model.addAttribute("partiuser", partiuser); 
				model.addAttribute("particomplete",particomplete);
			}
			if (session.getAttribute("teach") !=null) {
				int t_no = bno;
				List<TeacherParticipationVO> partiuser = service.myenrollteach(t_no);
				List<TeacherParticipationVO> particomplete = participationService.t_selectparticomplete(t_no);
				model.addAttribute("partiuser", partiuser); 
				model.addAttribute("particomplete", particomplete); 
				
			}
			
			
			
			return "/board/myenrollajax";
		}
		
		
	
}
