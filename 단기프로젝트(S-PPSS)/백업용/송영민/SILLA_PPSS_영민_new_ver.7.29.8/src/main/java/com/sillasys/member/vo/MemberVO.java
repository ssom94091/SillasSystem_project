package com.sillasys.member.vo;

public class MemberVO {
	private String member_pk;
	private String member_name;
	private String member_resnum_front;
	private String member_resnum_rear;
	private String member_gender;	
	private String member_address;
	private String member_email;
	private String member_number;
	private String member_position;
	private String member_e_year;
	private String member_department;
	private int contract_flag;
	public String getMember_pk() {
		return member_pk;
	}
	public void setMember_pk(String member_pk) {
		this.member_pk = member_pk;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_resnum_front() {
		return member_resnum_front;
	}
	public void setMember_resnum_front(String member_resnum_front) {
		this.member_resnum_front = member_resnum_front;
	}
	public String getMember_resnum_rear() {
		return member_resnum_rear;
	}
	public void setMember_resnum_rear(String member_resnum_rear) {
		this.member_resnum_rear = member_resnum_rear;
	}
	public String getMember_gender() {
		return member_gender;
	}
	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}
	public String getMember_address() {
		return member_address;
	}
	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_number() {
		return member_number;
	}
	public void setMember_number(String member_number) {
		this.member_number = member_number;
	}
	public String getMember_position() {
		return member_position;
	}
	public void setMember_position(String member_position) {
		this.member_position = member_position;
	}
	public String getMember_e_year() {
		return member_e_year;
	}
	public void setMember_e_year(String member_e_year) {
		this.member_e_year = member_e_year;
	}
	public String getMember_department() {
		return member_department;
	}
	public void setMember_department(String member_department) {
		this.member_department = member_department;
	}
	public int getContract_flag() {
		return contract_flag;
	}
	public void setContract_flag(int contract_flag) {
		this.contract_flag = contract_flag;
	}
	@Override
	public String toString() {
		return "MemberVO [member_pk=" + member_pk + ", member_name=" + member_name + ", member_resnum_front="
				+ member_resnum_front + ", member_resnum_rear=" + member_resnum_rear + ", member_gender="
				+ member_gender + ", member_address=" + member_address + ", member_email=" + member_email
				+ ", member_number=" + member_number + ", member_position=" + member_position + ", member_e_year="
				+ member_e_year + ", member_department=" + member_department + ", contract_flag=" + contract_flag + "]";
	}

}
