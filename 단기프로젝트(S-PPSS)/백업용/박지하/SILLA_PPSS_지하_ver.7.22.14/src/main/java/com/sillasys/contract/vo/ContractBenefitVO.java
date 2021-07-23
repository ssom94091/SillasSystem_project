package com.sillasys.contract.vo;

public class ContractBenefitVO {
	
	
	private int contract_pk;
	private int benefit_check;
	private String benefit_1;
	private String benefit_2;
	private String benefit_3;
	private String benefit_4;
	public int getContract_pk() {
		return contract_pk;
	}
	public void setContract_pk(int contract_pk) {
		this.contract_pk = contract_pk;
	}
	public int getBenefit_check() {
		return benefit_check;
	}
	public void setBenefit_check(int benefit_check) {
		this.benefit_check = benefit_check;
	}
	public String getBenefit_1() {
		return benefit_1;
	}
	public void setBenefit_1(String benefit_1) {
		this.benefit_1 = benefit_1;
	}
	public String getBenefit_2() {
		return benefit_2;
	}
	public void setBenefit_2(String benefit_2) {
		this.benefit_2 = benefit_2;
	}
	public String getBenefit_3() {
		return benefit_3;
	}
	public void setBenefit_3(String benefit_3) {
		this.benefit_3 = benefit_3;
	}
	public String getBenefit_4() {
		return benefit_4;
	}
	public void setBenefit_4(String benefit_4) {
		this.benefit_4 = benefit_4;
	}
	@Override
	public String toString() {
		return "ContractBenefitVO [contract_pk=" + contract_pk + ", benefit_check=" + benefit_check + ", benefit_1="
				+ benefit_1 + ", benefit_2=" + benefit_2 + ", benefit_3=" + benefit_3 + ", benefit_4=" + benefit_4
				+ "]";
	}
		
	
}
