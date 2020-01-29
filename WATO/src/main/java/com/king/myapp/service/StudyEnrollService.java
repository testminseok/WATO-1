package com.king.myapp.service;

import java.util.List;

import com.king.myapp.domain.StudentParticipationVO;
import com.king.myapp.domain.StudentReplyVO;
import com.king.myapp.domain.StudyEnrollVO;

public interface StudyEnrollService {
	
	// 1. 일반 스터디 모집글 등록 
	public void enroll(StudyEnrollVO studyVO) throws Exception;

	// 3. list 목차 출력 
	public List<StudyEnrollVO> list() throws Exception;

	//  상세보기 
	public void viewCount(int s_no) throws Exception;
	
	
	// 3. 상세보기 + 수정글 보기 
	public StudyEnrollVO detailRead(int s_no) throws Exception;

	// 4.  수정등록 
	public void modify(StudyEnrollVO studyVO) throws Exception;

	// 상세페이지 댓글등록
	public void replyInsert(StudentReplyVO replyVO) throws Exception;

	// 댓글 불러오기
	public List<StudentReplyVO> replyRead(int s_no) throws Exception;

	// 상세보기 삭제 
	public void studyDelete(int s_no) throws Exception;
	
	// 상세보기 댓글 수정 
	public void replyUpdate(StudentReplyVO replyVO) throws Exception;

	// 상세보기 댓글 삭제 
	public void replyDelete(int r_no) throws Exception;

	
	public StudentParticipationVO partiCheck(StudentParticipationVO partiVO) throws Exception;

	// 스터디 별점평가 
	public void starPartiUpdate(StudyEnrollVO studyVO) throws Exception;

//	
//	// 댓글에 대한 답글 (리더답변하기 )
//	public void leaderReply(LeaderReVO leaderReVO) throws Exception;
//
//	// 댓글  불러오기 
//	public List<StudentReReplyVO> reReplyRead(int s_no) throws Exception;
//
//	// 댓글 등록 
//	public void reReplyInsert(StudentReReplyVO replyVO) throws Exception;
//
//	// 댓글 수정 
//	public void reReplyUpdate(StudentReReplyVO replyVO) throws Exception;
//
//	// 댓글 삭제 
//	public void reReplyDelete(int r_no) throws Exception;
//
//	
	

}
