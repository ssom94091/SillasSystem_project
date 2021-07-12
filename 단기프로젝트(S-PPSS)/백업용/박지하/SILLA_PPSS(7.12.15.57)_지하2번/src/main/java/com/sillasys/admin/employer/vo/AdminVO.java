package com.sillasys.admin.employer.vo;

public class AdminVO {
	private int pk;
	private String id;
	private String pw;
	private String companyNumber;
	private String companayNm;
	private String grade;
	public int getPk() {
		return pk;
	}
	public void setPk(int pk) {
		this.pk = pk;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getCompanyNumber() {
		return companyNumber;
	}
	public void setCompanyNumber(String companyNumber) {
		this.companyNumber = companyNumber;
	}
	public String getCompanayNm() {
		return companayNm;
	}
	public void setCompanayNm(String companayNm) {
		this.companayNm = companayNm;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	@Override
	public String toString() {
		return "AdminVO [pk=" + pk + ", id=" + id + ", pw=" + pw + ", companyNumber=" + companyNumber + ", companayNm="
				+ companayNm + ", grade=" + grade + "]";
	}
	
	
	
}
