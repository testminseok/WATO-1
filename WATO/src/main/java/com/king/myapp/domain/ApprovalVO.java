package com.king.myapp.domain;

import org.springframework.web.multipart.MultipartFile;

public class ApprovalVO {
	
	private int bno;
	private MultipartFile app_Profile;
	private String app_Orgname;
	private String app_Newname;
	private MultipartFile app_Resume;
	private String app_Orgname2;
	private String app_Newname2;
	private String app_Gender;
	private String app_Phone1;
	private String app_Phone2;
	private String app_Phone3;
	private String User_Email;
	private String app_Addr1;
	private String app_Addr2;
	private String app_Addr3;
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public MultipartFile getApp_Profile() {
		return app_Profile;
	}
	public void setApp_Profile(MultipartFile app_Profile) {
		this.app_Profile = app_Profile;
	}
	public String getApp_Orgname() {
		return app_Orgname;
	}
	public void setApp_Orgname(String app_Orgname) {
		this.app_Orgname = app_Orgname;
	}
	public String getApp_Newname() {
		return app_Newname;
	}
	public void setApp_Newname(String app_Newname) {
		this.app_Newname = app_Newname;
	}
	public MultipartFile getApp_Resume() {
		return app_Resume;
	}
	public void setApp_Resume(MultipartFile app_Resume) {
		this.app_Resume = app_Resume;
	}
	public String getApp_Orgname2() {
		return app_Orgname2;
	}
	public void setApp_Orgname2(String app_Orgname2) {
		this.app_Orgname2 = app_Orgname2;
	}
	public String getApp_Newname2() {
		return app_Newname2;
	}
	public void setApp_Newname2(String app_Newname2) {
		this.app_Newname2 = app_Newname2;
	}
	public String getApp_Gender() {
		return app_Gender;
	}
	public void setApp_Gender(String app_Gender) {
		this.app_Gender = app_Gender;
	}
	public String getApp_Phone1() {
		return app_Phone1;
	}
	public void setApp_Phone1(String app_Phone1) {
		this.app_Phone1 = app_Phone1;
	}
	public String getApp_Phone2() {
		return app_Phone2;
	}
	public void setApp_Phone2(String app_Phone2) {
		this.app_Phone2 = app_Phone2;
	}
	public String getApp_Phone3() {
		return app_Phone3;
	}
	public void setApp_Phone3(String app_Phone3) {
		this.app_Phone3 = app_Phone3;
	}
	public String getUser_Email() {
		return User_Email;
	}
	public void setUser_Email(String user_Email) {
		User_Email = user_Email;
	}
	public String getApp_Addr1() {
		return app_Addr1;
	}
	public void setApp_Addr1(String app_Addr1) {
		this.app_Addr1 = app_Addr1;
	}
	public String getApp_Addr2() {
		return app_Addr2;
	}
	public void setApp_Addr2(String app_Addr2) {
		this.app_Addr2 = app_Addr2;
	}
	public String getApp_Addr3() {
		return app_Addr3;
	}
	public void setApp_Addr3(String app_Addr3) {
		this.app_Addr3 = app_Addr3;
	}	
}
