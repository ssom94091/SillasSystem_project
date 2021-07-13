package com.sillasys.admin.employer.vo;

public class AdminVO {
	private String admin_id;  		 // 관리자 아이디
	private String admin_pw; 		 // 관리자 비밀번호 
	private String company_name;	 // 회사명
	private String company_phone;	 // 회사연락처
	private String company_address;	 // 회사주소

	

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_pw() {
		return admin_pw;
	}

	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getCompany_phone() {
		return company_phone;
	}

	public void setCompany_phone(String company_phone) {
		this.company_phone = company_phone;
	}

	public String getCompany_address() {
		return company_address;
	}

	public void setCompany_address(String company_address) {
		this.company_address = company_address;
	}

	@Override
	public String toString() {
		return "AdminVO [admin_id=" + admin_id + ", admin_pw=" + admin_pw + ", company_name=" + company_name
				+ ", company_phone=" + company_phone + ", company_address=" + company_address + "]";
	}
	
	
	
}
