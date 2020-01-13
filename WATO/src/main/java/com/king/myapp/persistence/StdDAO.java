package com.king.myapp.persistence;

import com.king.myapp.domain.StdVO;

public interface StdDAO {
	
	// 회원 가입
	public void std_join(StdVO vo) throws Exception;
	
	// 개인정보 수정
	public void info_modify(StdVO vo) throws Exception;	 
	
	// 아이디 중복체크
	public int idChk(StdVO vo) throws Exception;

	// 로그인
	public StdVO login(StdVO vo) throws Exception;

}