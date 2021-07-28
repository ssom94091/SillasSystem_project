package com.sillasys.contract.vo;

public class ContractWorkVO {
	
	private int contract_pk; //외래키
	private int flag;
	private String start_hour;
	private String start_min;
	private String end_hour;
	private String end_min;
	private String b_start_hour;
	private String b_start_min;
	private String b_end_hour;
	private String b_end_min;
	private String work_day;
	private String work_time;
	public int getContract_pk() {
		return contract_pk;
	}
	public void setContract_pk(int contract_pk) {
		this.contract_pk = contract_pk;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	public String getStart_hour() {
		return start_hour;
	}
	public void setStart_hour(String start_hour) {
		this.start_hour = start_hour;
	}
	public String getStart_min() {
		return start_min;
	}
	public void setStart_min(String start_min) {
		this.start_min = start_min;
	}
	public String getEnd_hour() {
		return end_hour;
	}
	public void setEnd_hour(String end_hour) {
		this.end_hour = end_hour;
	}
	public String getEnd_min() {
		return end_min;
	}
	public void setEnd_min(String end_min) {
		this.end_min = end_min;
	}
	public String getB_start_hour() {
		return b_start_hour;
	}
	public void setB_start_hour(String b_start_hour) {
		this.b_start_hour = b_start_hour;
	}
	public String getB_start_min() {
		return b_start_min;
	}
	public void setB_start_min(String b_start_min) {
		this.b_start_min = b_start_min;
	}
	public String getB_end_hour() {
		return b_end_hour;
	}
	public void setB_end_hour(String b_end_hour) {
		this.b_end_hour = b_end_hour;
	}
	public String getB_end_min() {
		return b_end_min;
	}
	public void setB_end_min(String b_end_min) {
		this.b_end_min = b_end_min;
	}
	public String getWork_day() {
		return work_day;
	}
	public void setWork_day(String work_day) {
		this.work_day = work_day;
	}
	public String getWork_time() {
		return work_time;
	}
	public void setWork_time(String work_time) {
		this.work_time = work_time;
	}
	@Override
	public String toString() {
		return "ContractWorkVO [contract_pk=" + contract_pk + ", flag=" + flag + ", start_hour=" + start_hour
				+ ", start_min=" + start_min + ", end_hour=" + end_hour + ", end_min=" + end_min + ", b_start_hour="
				+ b_start_hour + ", b_start_min=" + b_start_min + ", b_end_hour=" + b_end_hour + ", b_end_min="
				+ b_end_min + ", work_day=" + work_day + ", work_time=" + work_time + "]";
	}
	
	
	
}
