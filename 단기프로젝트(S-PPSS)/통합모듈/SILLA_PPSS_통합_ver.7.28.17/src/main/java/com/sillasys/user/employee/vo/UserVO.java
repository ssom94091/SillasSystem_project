package com.sillasys.user.employee.vo;

public class UserVO {   //DB
	   private String user_id;				/* 유저 아이디 & user_tb 기본키*/
	   private String user_pw;				/* 유저 비밀번호 */
	   private String user_name;			/* 유저 이륾 */
	   private String user_address;			/* 유저 주소*/
	   private String user_address_detail;	/* 유저 상세 주소*/
	   private String user_resnum_front;	/* 유저 주민등록번호 앞 */
	   private String user_resnum_rear;		/* 유저 주민등록번호 뒤 */
	   private String user_gender;			/* 유저 성별 */
	   private String user_email;			/* 유저 이메일 */
	   private String user_phone;			/* 유저 연락처 */
	   private String company_name;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public String getUser_address_detail() {
		return user_address_detail;
	}
	public void setUser_address_detail(String user_address_detail) {
		this.user_address_detail = user_address_detail;
	}
	public String getUser_resnum_front() {
		return user_resnum_front;
	}
	public void setUser_resnum_front(String user_resnum_front) {
		this.user_resnum_front = user_resnum_front;
	}
	public String getUser_resnum_rear() {
		return user_resnum_rear;
	}
	public void setUser_resnum_rear(String user_resnum_rear) {
		this.user_resnum_rear = user_resnum_rear;
	}
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	
	@Override
	public String toString() {
		return "UserVO [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name + ", user_address="
				+ user_address + ", user_address_detail=" + user_address_detail + ", user_resnum_front="
				+ user_resnum_front + ", user_resnum_rear=" + user_resnum_rear + ", user_gender=" + user_gender
				+ ", user_email=" + user_email + ", user_phone=" + user_phone + ", company_name=" + company_name + "]";
	}
		
	   
}