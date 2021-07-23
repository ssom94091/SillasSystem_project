package com.sillasys.user.employee.vo;

public class ContractEndTimeVO {
	
	private int contract_pk; // pk
	private String end_year;
	private String end_month;
	private String end_day;
	public int getContract_pk() {
		return contract_pk;
	}
	public void setContract_pk(int contract_pk) {
		this.contract_pk = contract_pk;
	}
	public String getEnd_year() {
		return end_year;
	}
	public void setEnd_year(String end_year) {
		this.end_year = end_year;
	}
	public String getEnd_month() {
		return end_month;
	}
	public void setEnd_month(String end_month) {
		this.end_month = end_month;
	}
	public String getEnd_day() {
		return end_day;
	}
	public void setEnd_day(String end_day) {
		this.end_day = end_day;
	}
	
	@Override
	public String toString() {
		return "EcEndTimeVO [contract_pk=" + contract_pk + ", end_year=" + end_year + ", end_month=" + end_month
				+ ", end_day=" + end_day + "]";
	}
	
}
