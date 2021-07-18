package com.sillasys.user.employee.vo;

public class UserVO {   //DB
	   private String userId;				/* 유저 아이디 & user_tb 기본키*/
	   private String userPw;				/* 유저 비밀번호 */
	   private String userName;			/* 유저 이륾 */
	   private String userAddress;			/* 유저 주소*/
	   private String userResNum_front;	/* 유저 주민등록번호 앞 */
	   private String userResNum_rear;		/* 유저 주민등록번호 뒤 */
	   private String userGender;			/* 유저 성별 */
	   private String userEmail;			/* 유저 이메일 */
	   private String userPhone;			/* 유저 연락처 */
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
		return userResNum_front;
	}
	public void setUserResnum_front(String userResnum_front) {
		this.userResNum_front = userResnum_front;
	}
	public String getUserResnum_rear() {
		return userResNum_rear;
	}
	public void setUserResnum_rear(String userResnum_rear) {
		this.userResNum_rear = userResnum_rear;
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