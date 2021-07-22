package com.sillasys.contract.vo;

public class ContractBenefitVO {
	
	private int benefit_pk;
	private int contract_pk;
	private String benefit;
	public int getBenefit_pk() {
		return benefit_pk;
	}
	public void setBenefit_pk(int benefit_pk) {
		this.benefit_pk = benefit_pk;
	}
	public int getContract_pk() {
		return contract_pk;
	}
	public void setContract_pk(int contract_pk) {
		this.contract_pk = contract_pk;
	}
	public String getBenefit() {
		return benefit;
	}
	public void setBenefit(String benefit) {
		this.benefit = benefit;
	}
	@Override
	public String toString() {
		return "EcBenefitVO [benefit_pk=" + benefit_pk + ", contract_pk=" + contract_pk + ", benefit=" + benefit + "]";
	}
	
}
