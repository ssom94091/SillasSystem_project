package com.sillasys.user.employee.vo;

public class UserVO {   //DB
	   private int userPk;
	   private String userId;
	   private String userPw;
	   private String userName;
	   private String userAddress;
	   private String userResnum_front;
	   private String userResnum_rear;
	   private String userGender;
	   private String userEmail;
	   private String userPhone;
	   
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserResnum_front() {
		return userResnum_front;
	}
	public void setUserResnum_front(String userResnum_front) {
		this.userResnum_front = userResnum_front;
	}
	public String getUserResnum_rear() {
		return userResnum_rear;
	}
	public void setUserResnum_rear(String userResnum_rear) {
		this.userResnum_rear = userResnum_rear;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	
	@Override
	public String toString() {
		return "UserVO [userPk=" + userPk + ", userId=" + userId + ", userPw=" + userPw + ", userName=" + userName
				+ ", userAddress=" + userAddress + ", userResnum_front=" + userResnum_front + ", userResnum_rear="
				+ userResnum_rear + ", userGender=" + userGender + ", userEmail=" + userEmail + ", userPhone="
				+ userPhone + "]";
	}
	   
}