package com.sillasys.contract.vo;

public class ContractVO {
	
	private int contract_pk;	// pk
	private String contract_type;
	private String user_id; 
	private String admin_id;
	private String start_year;
	private String start_month;
	private String start_day;
	private String work_place;
	private String content;
	private String work_per_week;
	private String holiday;
	private String pay_type;
	private String pay;
	private String bonus;
	private String payday;
	private String payfor;
	private String em_insurance ;
	private String ac_insurance;
	private String pension;
	private String hlt_insurance;
	private String canvas;
	private String contract_year;
	private String contract_month;
	private String contract_day;
	private String admin_name;
	private String extra_pay;
	private String create_date;
	private String modify_date;
	private String company_name;
	
	public int getContract_pk() {
		return contract_pk;
	}
	public void setContract_pk(int contract_pk) {
		this.contract_pk = contract_pk;
	}
	public String getContract_type() {
		return contract_type;
	}
	public void setContract_type(String contract_type) {
		this.contract_type = contract_type;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getStart_year() {
		return start_year;
	}
	public void setStart_year(String start_year) {
		this.start_year = start_year;
	}
	public String getStart_month() {
		return start_month;
	}
	public void setStart_month(String start_month) {
		this.start_month = start_month;
	}
	public String getStart_day() {
		return start_day;
	}
	public void setStart_day(String start_day) {
		this.start_day = start_day;
	}
	public String getWork_place() {
		return work_place;
	}
	public void setWork_place(String work_place) {
		this.work_place = work_place;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWork_per_week() {
		return work_per_week;
	}
	public void setWork_per_week(String work_per_week) {
		this.work_per_week = work_per_week;
	}
	public String getHoliday() {
		return holiday;
	}
	public void setHoliday(String holiday) {
		this.holiday = holiday;
	}
	public String getPay_type() {
		return pay_type;
	}
	public void setPay_type(String pay_type) {
		this.pay_type = pay_type;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public String getBonus() {
		return bonus;
	}
	public void setBonus(String bonus) {
		this.bonus = bonus;
	}
	public String getPayday() {
		return payday;
	}
	public void setPayday(String payday) {
		this.payday = payday;
	}
	public String getPayfor() {
		return payfor;
	}
	public void setPayfor(String payfor) {
		this.payfor = payfor;
	}
	public String getEm_insurance() {
		return em_insurance;
	}
	public void setEm_insurance(String em_insurance) {
		this.em_insurance = em_insurance;
	}
	public String getAc_insurance() {
		return ac_insurance;
	}
	public void setAc_insurance(String ac_insurance) {
		this.ac_insurance = ac_insurance;
	}
	public String getPension() {
		return pension;
	}
	public void setPension(String pension) {
		this.pension = pension;
	}
	public String getHlt_insurance() {
		return hlt_insurance;
	}
	public void setHlt_insurance(String hlt_insurance) {
		this.hlt_insurance = hlt_insurance;
	}
	public String getCanvas() {
		return canvas;
	}
	public void setCanvas(String canvas) {
		this.canvas = canvas;
	}
	public String getContract_year() {
		return contract_year;
	}
	public void setContract_year(String contract_year) {
		this.contract_year = contract_year;
	}
	public String getContract_month() {
		return contract_month;
	}
	public void setContract_month(String contract_month) {
		this.contract_month = contract_month;
	}
	public String getContract_day() {
		return contract_day;
	}
	public void setContract_day(String contract_day) {
		this.contract_day = contract_day;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getExtra_pay() {
		return extra_pay;
	}
	public void setExtra_pay(String extra_pay) {
		this.extra_pay = extra_pay;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public String getModify_date() {
		return modify_date;
	}
	public void setModify_date(String modify_date) {
		this.modify_date = modify_date;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	
	@Override
	public String toString() {
		return "ContractVO [contract_pk=" + contract_pk + ", contract_type=" + contract_type + ", user_id=" + user_id
				+ ", admin_id=" + admin_id + ", start_year=" + start_year + ", start_month=" + start_month
				+ ", start_day=" + start_day + ", work_place=" + work_place + ", content=" + content
				+ ", work_per_week=" + work_per_week + ", holiday=" + holiday + ", pay_type=" + pay_type + ", pay="
				+ pay + ", bonus=" + bonus + ", payday=" + payday + ", payfor=" + payfor + ", em_insurance="
				+ em_insurance + ", ac_insurance=" + ac_insurance + ", pension=" + pension + ", hlt_insurance="
				+ hlt_insurance + ", canvas=" + canvas + ", contract_year=" + contract_year + ", contract_month="
				+ contract_month + ", contract_day=" + contract_day + ", admin_name=" + admin_name + ", extra_pay="
				+ extra_pay + ", create_date=" + create_date + ", modify_date=" + modify_date + ", company_name="
				+ company_name + "]";
	}
}
