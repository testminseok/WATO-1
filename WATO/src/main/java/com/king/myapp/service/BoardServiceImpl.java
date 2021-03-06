package com.king.myapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.king.myapp.domain.BoardVO;
import com.king.myapp.domain.MainLangugeRankVO;
import com.king.myapp.domain.QnaBoardVO;
import com.king.myapp.domain.StudentParticipationVO;
import com.king.myapp.domain.StudyEnrollVO;
import com.king.myapp.domain.StudyListFilter;
import com.king.myapp.domain.TeacherEnrollVO;
import com.king.myapp.domain.TeacherParticipationVO;
import com.king.myapp.persistence.BoardDAO;



@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDAO dao;
	
	@Override
	public List<StudyEnrollVO> listRank() throws Exception {
		return dao.listRank();   
	}
	@Override
	public List<StudyEnrollVO> searchResultStudy(String searchKey) throws Exception {
		return dao.searchResultStudy(searchKey);
	}
	@Override
	public List<TeacherEnrollVO> searchResultTeacher(String searchKey) throws Exception {
		return dao.searchResultTeacher(searchKey);
	}
	@Override
	public List<QnaBoardVO> searchResultQna(String searchKey) throws Exception {
		return dao.searchResultQna(searchKey);
	}
	@Override
	public List<StudyEnrollVO> studylistAll() throws Exception {
		return dao.studylistAll();
	}
	@Override
	public List<StudyEnrollVO> studylistfilter(StudyListFilter sLF) throws Exception {
		return dao.studylistfilter(sLF);
	}
	@Override
	public List<TeacherEnrollVO> TearchlistAll() throws Exception {
		return dao.TearchlistAll();
	}
	@Override
	public List<TeacherEnrollVO> TeacherListFilter(StudyListFilter sLF) throws Exception{
		return dao.TeacherListFilter(sLF);
	}
	@Override
	public List<MainLangugeRankVO> langugerank() throws Exception {
		return dao.langugerank();
	}
	@Override
	public void heartbuttoninsert(StudyEnrollVO std) throws Exception {
		dao.heartbuttoninsert(std);
	}
	@Override
	public List<StudyEnrollVO> seleteheartbutton(StudyEnrollVO std) throws Exception {
		return dao.seleteheartbutton(std);
	}
	@Override
	public void heartbuttondelete(StudyEnrollVO std) throws Exception {
		dao.heartbuttondelete(std);
	}
	@Override
	public void likebuttoninsert(StudyEnrollVO std) throws Exception {
		dao.likebuttoninsert(std);
	}
	@Override
	public List<StudyEnrollVO> seletelikebutton(StudyEnrollVO std) throws Exception {
		return dao.seletelikebutton(std);
	}
	@Override
	public void likebuttondelete(StudyEnrollVO std) throws Exception {
		dao.likebuttondelete(std);
	}
	@Override
	public StudyEnrollVO searchS_no(int s_no) throws Exception {
		return dao.searchS_no(s_no);
	}
	@Override
	public TeacherEnrollVO searchT_no(int s_no) throws Exception {
		return dao.searchT_no(s_no);
	}
	@Override
	public List<StudentParticipationVO> myenrollstudent(int s_no) throws Exception {
		return dao.myenrollstudent(s_no);
	}
	@Override
	public List<TeacherParticipationVO> myenrollteach(int t_no) throws Exception {
		return dao.myenrollteach(t_no);
	}
}
