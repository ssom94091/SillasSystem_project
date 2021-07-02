package com.sillasys.user.employee.vo;

public class UserVO {   //DB
	   private int userPk;
	   private String userId;
	   private String userPw;
	   private String userPhone;
	   private String userNick;
	public int getUserPk() {
		return userPk;
	}
	public void setUserPk(int userPk) {
		this.userPk = userPk;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserNick() {
		return userNick;
	}
	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}
	@Override
	public String toString() {
		return "UserVO [userPk=" + userPk + ", userId=" + userId + ", userPw=" + userPw + ", userPhone=" + userPhone
				+ ", userNick=" + userNick + "]";
	}
	   
	   
	   
	   
	   
	}