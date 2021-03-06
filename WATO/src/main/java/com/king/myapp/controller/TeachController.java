package com.king.myapp.controller;

import java.io.File;
import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;

import com.king.myapp.domain.ApprovalVO;
import com.king.myapp.domain.StdVO;
import com.king.myapp.domain.TeachVO;
import com.king.myapp.service.TeachService;

@Controller
@RequestMapping("/teach/*")
public class TeachController implements ServletContextAware {

	private static final Logger logger = LoggerFactory.getLogger(StdController.class);

	@Autowired
	 private ServletContext servletContext;
	
	@Inject
	TeachService service;

	// 강사 약관동의 get
	@RequestMapping(value = "/terms", method = RequestMethod.GET)
	public void getTerms() throws Exception {
		logger.info("get terms");
	}
	
	// 강사 회원 가입 get
	@RequestMapping(value = "/teach_join", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get teach_join");
	}

	// 강사 회원 가입 POST
	@RequestMapping(value = "/teach_join", method = RequestMethod.POST)
	public void postRegister(ApprovalVO vo, TeachVO tvo, HttpServletResponse response) throws Exception {
		logger.info("post teach_join");
		
		int result = service.emailChk(tvo);
		
		try {
			if (result == 1) {

				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('중복된 이메일입니다. 새로 입력해주세요.'); location.href='http://localhost:8080/teach/teach_join?terms1=on&terms2=on';</script>");
				out.flush();
				
			} else if (result == 0) {
				
				// 파일 업로드 체크
				MultipartFile f = vo.getApp_Profile();
				if (!f.isEmpty()) { // 파일 업로드가 됐다면
					String app_Orgname = f.getOriginalFilename();
					String app_Newname = app_Orgname;
					String path = servletContext.getRealPath("/resource/images");
					System.out.println("path : " + path);
					File file = new File(path + File.separator + app_Newname);
					vo.setApp_Orgname(app_Orgname);
					vo.setApp_Orgname(app_Newname);
					f.transferTo(file);
				}
				
				// 파일 업로드 체크2
				MultipartFile f2 = vo.getApp_Resume();
				if (!f2.isEmpty()) { // 파일 업로드가 됐다면
					String app_Orgname2 = f2.getOriginalFilename();
					String app_Newname2 = app_Orgname2;
					String path = servletContext.getRealPath("/resource/images");
					System.out.println("path : " + path);
					File file2 = new File(path + File.separator + app_Newname2);
					vo.setApp_Orgname2(app_Orgname2);
					vo.setApp_Newname2(app_Newname2);
					f2.transferTo(file2);
				}
				
				service.teach_join(vo);
				
				service.admin_mng1(vo);
				logger.info("강사정보 회원관리에 추가");
				
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('승인신청이 완료되었습니다. 관리자의 승인을 기다려주세요.'); location.href='http://localhost:8080/';</script>");
		out.flush();
		
	}
	
	// 강사 회원 가입2 get
	@RequestMapping(value = "/teach_join_2", method = RequestMethod.GET)
	public void getRegister2() throws Exception {
		logger.info("get teach_join");
	}
	
	// 강사 회원 가입2 POST
	@RequestMapping(value = "/teach_join_2", method = RequestMethod.POST)
	public void postRegister2(TeachVO vo, HttpServletResponse response) throws Exception {
		logger.info("post teach_join");
		
		int result = service.idChk(vo);
		int mailCheck = service.mailCheck(vo);
		
		try {
			if (result == 1) {
				
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('중복된 아이디입니다. 새로 입력해주세요.'); location.href='http://localhost:8080/teach/teach_join_2?terms1=on&terms2=on&terms3=on';</script>");
				out.flush();
				
			} else if (mailCheck == 0) {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('존재하지 않는 이메일입니다.'); location.href='http://localhost:8080/teach/teach_join_2?terms1=on&terms2=on&terms3=on';</script>");
				
			} else if (mailCheck == 1) { 
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('중복된 이메일입니다.'); location.href='http://localhost:8080/teach/teach_join_2?terms1=on&terms2=on&terms3=on';</script>");
				
			} else if (result == 0) {
				
				service.teach_join3(vo);
				
				service.admin_mng2(vo);
				logger.info("강사정보 회원관리에 추가");
			}
				
		} catch (Exception e) {
			throw new RuntimeException();
		}		

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('회원가입이 완료되었습니다.'); location.href='http://localhost:8080/';</script>");
		out.flush();
		
	}
	
	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "/idChk", method = RequestMethod.POST)
	public int idChk(TeachVO vo) throws Exception {
		int result = service.idChk(vo);
		return result;
	}
	
	// 이메일 중복 체크
	@ResponseBody
	@RequestMapping(value = "/emailChk", method = RequestMethod.POST)
	public int emailChk(TeachVO vo) throws Exception {
		int result = service.emailChk(vo);
		return result;
	}
	
	// 강사 회원정보 수정 get
	@RequestMapping(value = "/teach_info", method = RequestMethod.GET)
	public void getInfo() throws Exception {
		logger.info("get 강사 회원정보수정");
	}
	
	// 강사 회원정보 수정 post
	@RequestMapping(value = "/teach_info", method = RequestMethod.POST)
	public String postInfo(HttpSession session, TeachVO vo) throws Exception {
		logger.info("post info Modify");
		
		service.info_modify(vo);
		
		session.invalidate(); // 기존의 세션값을 없애고 새 것을 만들겠다는 뜻
		
		return "redirect:/";
		
	}

	
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		logger.info("get 강사 로그아웃");

		session.invalidate();

		return "redirect:/";
	}

	@Override
	public void setServletContext(ServletContext arg0) {
		this.servletContext = servletContext;		
	}	
	 
}
