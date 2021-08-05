package com.sillasys.contract.vo;

public class ContractVO {
	private int contract_pk; 
	private String member_pk;
	private String content;
	private int complate;
	private String create_date;
	private String modify_date;
	public int getContract_pk() {
		return contract_pk;
	}
	public void setContract_pk(int contract_pk) {
		this.contract_pk = contract_pk;
	}
	public String getMember_pk() {
		return member_pk;
	}
	public void setMember_pk(String member_pk) {
		this.member_pk = member_pk;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getComplate() {
		return complate;
	}
	public void setComplate(int complate) {
		this.complate = complate;
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
	@Override
	public String toString() {
		return "ContractVO [contract_pk=" + contract_pk + ", member_pk=" + member_pk + ", content=" + content
				+ ", complate=" + complate + ", create_date=" + create_date + ", modify_date=" + modify_date + "]";
	}
	
}
