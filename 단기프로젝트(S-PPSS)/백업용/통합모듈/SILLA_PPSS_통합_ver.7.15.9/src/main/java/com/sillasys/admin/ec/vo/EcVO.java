package com.sillasys.admin.ec.vo;

public class EcVO {
	
	private int seq;	//시퀀스
	private String employerNm;	//등록자
	private String pay;	//급여
	private String companyNm;	//회사명
	private String content;	//계약서내용
	private String workStartDt;	//출근시간
	private String workEndDt;	//퇴근시간
	private String contStartDt;	//계약시작일
	private String contEndDt;	//계약만료일
	private String regDt;	//계약서 작성일
	private String modDt;	//계약서 수정일
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getEmployerNm() {
		return employerNm;
	}
	public void setEmployerNm(String employerNm) {
		this.employerNm = employerNm;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public String getCompanyNm() {
		return companyNm;
	}
	public void setCompanyNm(String companyNm) {
		this.companyNm = companyNm;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWorkStartDt() {
		return workStartDt;
	}
	public void setWorkStartDt(String workStartDt) {
		this.workStartDt = workStartDt;
	}
	public String getWorkEndDt() {
		return workEndDt;
	}
	public void setWorkEndDt(String workEndDt) {
		this.workEndDt = workEndDt;
	}
	public String getContStartDt() {
		return contStartDt;
	}
	public void setContStartDt(String contStartDt) {
		this.contStartDt = contStartDt;
	}
	public String getContEndDt() {
		return contEndDt;
	}
	public void setContEndDt(String contEndDt) {
		this.contEndDt = contEndDt;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	public String getModDt() {
		return modDt;
	}
	public void setModDt(String modDt) {
		this.modDt = modDt;
	}
	@Override
	public String toString() {
		return "EcVO [seq=" + seq + ", employerNm=" + employerNm + ", pay=" + pay + ", companyNm=" + companyNm
				+ ", content=" + content + ", workStartDt=" + workStartDt + ", workEndDt=" + workEndDt
				+ ", contStartDt=" + contStartDt + ", contEndDt=" + contEndDt + ", regDt=" + regDt + ", modDt=" + modDt
				+ "]";
	}
	
	
	
	
	
}
