package com.sillasys.admin.ec.vo;

public class EcVO {
	
	private int contarct_pk;	// pk
	private String content_html;
	private String user_id;
	private String admin_id;
	public int getContarct_pk() {
		return contarct_pk;
	}
	public void setContarct_pk(int contarct_pk) {
		this.contarct_pk = contarct_pk;
	}
	public String getContent_html() {
		return content_html;
	}
	public void setContent_html(String content_html) {
		this.content_html = content_html;
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
	@Override
	public String toString() {
		return "EcVO [contarct_pk=" + contarct_pk + ", content_html=" + content_html + ", user_id=" + user_id
				+ ", admin_id=" + admin_id + "]";
	}
	
	
	
	
}
