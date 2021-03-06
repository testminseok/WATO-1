package com.king.myapp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.king.myapp.domain.StdVO;
import com.king.myapp.persistence.StdDAO;

@Service
public class StdServiceImpl implements StdService {
	
	@Inject
	private StdDAO dao;

	// 회원 가입
	@Override
	public void std_join(StdVO vo) throws Exception {
		dao.std_join(vo);		
	}

	// 회원정보수정
	@Override
	public void info_modify(StdVO vo) throws Exception {
		dao.info_modify(vo);
	}
	
	// 아이디 중복 체크
	@Override
	public int idChk(StdVO vo) throws Exception {
		int result = dao.idChk(vo);
		return result;
	}

	// 학생 정보 회원관리로
	@Override
	public void admin_mng(StdVO vo) throws Exception {
		dao.admin_mng(vo);
	}

	// 이메일 중복 체크
	@Override
	public int emailChk(StdVO vo) throws Exception {
		int result = dao.emailChk(vo);
		return result;
	}

}
