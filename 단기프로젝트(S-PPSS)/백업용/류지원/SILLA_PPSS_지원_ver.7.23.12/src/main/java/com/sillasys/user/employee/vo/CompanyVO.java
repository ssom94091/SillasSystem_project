package com.sillasys.user.employee.vo;

public class CompanyVO {
	private String company_name;
	private String company_phone;
	private String company_address;
	
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
		return "CompanyVO [company_name=" + company_name + ", company_phone=" + company_phone + ", company_address="
				+ company_address + "]";
	}
	
	
	
}
