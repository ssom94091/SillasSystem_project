package com.sillasys.user.employee.vo;

public class UserVO {   //DB
	   private String userId;
	   private String userPw;
	   private String userName;
	   private String userAddress;
	   private String userResNum_front;
	   private String userResNum_rear;
	   private String userGender;
	   private String userEmail;
	   private String userPhone;
	   
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
	public String getUserResNum_front() {
		return userResNum_front;
	}
	public void setUserResNum_front(String userResNum_front) {
		this.userResNum_front = userResNum_front;
	}
	public String getUserResNum_rear() {
		return userResNum_rear;
	}
	public void setUserResNum_rear(String userResNum_rear) {
		this.userResNum_rear = userResNum_rear;
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
		return "UserVO [userId=" + userId + ", userPw=" + userPw + ", userName=" + userName + ", userAddress="
				+ userAddress + ", userResNum_front=" + userResNum_front + ", userResNum_rear=" + userResNum_rear
				+ ", userGender=" + userGender + ", userEmail=" + userEmail + ", userPhone=" + userPhone + "]";
	}
	   
	
	   
	   
	
}