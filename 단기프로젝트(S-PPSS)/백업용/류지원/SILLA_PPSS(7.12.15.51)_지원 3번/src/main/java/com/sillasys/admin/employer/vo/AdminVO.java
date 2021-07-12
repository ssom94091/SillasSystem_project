package com.sillasys.admin.employer.vo;

public class AdminVO {
	private String adminId;
	private String adminPw;
	private String companyName;
	private String companayNumber;
	private String companyAddress;
	
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminPw() {
		return adminPw;
	}
	public void setAdminPw(String adminPw) {
		this.adminPw = adminPw;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getCompanayNumber() {
		return companayNumber;
	}
	public void setCompanayNumber(String companayNumber) {
		this.companayNumber = companayNumber;
	}
	public String getCompanyAddress() {
		return companyAddress;
	}
	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}
	
	@Override
	public String toString() {
		return "AdminVO [adminId=" + adminId + ", adminPw=" + adminPw + ", companyName=" + companyName
				+ ", companayNumber=" + companayNumber + ", companyAddress=" + companyAddress + "]";
	}
}
	